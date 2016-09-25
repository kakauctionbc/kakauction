package com.app.kaka.admin.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.kaka.admin.model.AdminHighService;
import com.app.kaka.admin.model.AdminService;
import com.app.kaka.auction.controller.AuctionController;
import com.app.kaka.auction.model.AuctionService;
import com.app.kaka.member.model.MemberService;
import com.app.kaka.member.model.MemberVO;
import com.app.kaka.op.model.OpService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AuctionController.class);
	
	@Autowired
	private AuctionService auctionService;

	@Autowired
	private AdminHighService adminHighService;
	
	@Autowired
	private OpService opService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/index.do")
	public String adminIndex(Model model){
		int carApply = adminService.selectCountCarApply();
		int auctionStart = adminService.selectCountAuctionStart();
		int auctionEnd = adminService.selectCountAuctionEnd();
		int reportCar = adminService.selectCountReportCar();
		int reportNo = adminService.selectCountReportNo();
		int memberJoin = adminService.selectCountMemberJoin();
		int memberOut = adminService.selectCountMemberOut();
		
		model.addAttribute("carApply", carApply);
		model.addAttribute("auctionStart", auctionStart);
		model.addAttribute("auctionEnd", auctionEnd);
		model.addAttribute("reportCar", reportCar);
		model.addAttribute("reportNo", reportNo);
		model.addAttribute("memberJoin", memberJoin);
		model.addAttribute("memberOut", memberOut);
		
		return "admin/index";
	}
	
	@RequestMapping(value="/login/adminLogin.do",method=RequestMethod.GET)
	public String login_get(){
		logger.info("로그인창입니다.");
		
		return "admin/login/adminLogin";
	}
	
	@RequestMapping(value="/login/adminLogin.do", method=RequestMethod.POST)
	public String login_post(@ModelAttribute MemberVO memVo,
			@RequestParam(required=false) String chkSave, 
			HttpServletRequest request,
			HttpServletResponse response,
			Model model){
		
		String memberId = memVo.getMemberId();
		String memberGrade = memberService.whereMemberGrade(memberId);
		if (!memberGrade.equals("ADMIN")) {
			model.addAttribute("msg", "등록되지 않은 아이디입니다.");
			model.addAttribute("url", "/admin/login/adminLogin.do");
			
			return "common/message";
		}
		
		memVo.setMemberGrade(MemberService.MEMBER_GRADE_ADMIN);
		logger.info("관리자 로그인 처리, 파라미터 memVo={}",memVo);
		logger.info("관리자 로그인 처리, 파라미터 chkSave={}",chkSave);
		
		
		String msg="", url="/admin/login/adminLogin.do";
		int result = memberService.loginCheck(memVo);
		logger.info("관리자 로그인 처리 결과는? result={}",result);
		if (result==memberService.LOGIN_OK) {
			MemberVO memberVo = memberService.selectMemberByUserid(memVo.getMemberId());
			//[1]세션에 저장
			HttpSession session = request.getSession();
			session.setAttribute("memberId", memVo.getMemberId());
			session.setAttribute("memberName", memberVo.getMemberName());
			session.setAttribute("memberGrade", memVo.getMemberGrade());
			//[2]쿠키에 저장
			Cookie ck = new Cookie("ck_userid",memVo.getMemberId());
			if(chkSave!=null){
				ck.setMaxAge(1000*24*60*60); //1000일
				response.addCookie(ck);
			}else{
				ck.setMaxAge(0); //쿠키 제거
				response.addCookie(ck);
			}
			msg=memVo.getMemberId()+"관리자 로그인되었습니다";
			url="/admin/index.do";
		}else if(result==memberService.PWD_DISAGREE){
			//비밀번호 불일치
			msg="비밀번호가 일치하지 않습니다";
		}else if(result==memberService.ID_NONE){
			//해당아이디가 없는 경우
			msg="해당 아이디가 존재하지 않습니다";
		}else{
			msg="로그인 체크 실패";
		}
		
		//3.
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@RequestMapping("/login/logout.do")
	public String logout(HttpSession session, Model model){
		//1. 
		logger.info("로그아웃 처리");
		
		//2.
		//session.invalidate();
		session.removeAttribute("memberId");
		session.removeAttribute("memberName");
		session.removeAttribute("memberGrade");
		
		//3.
		model.addAttribute("msg", "로그아웃되었습니다.");
		model.addAttribute("url", "/admin/index.do");
		
		return "common/message";
	}
	
	@RequestMapping(value="/member/register.do", method=RequestMethod.GET)
	public String memberWrite_get(){
		logger.info("관리자 등록 화면 보여주기");
		return "admin/member/register";
	}
	
	@RequestMapping(value="/member/register.do", method=RequestMethod.POST)
	public String memberWrite_post(@ModelAttribute MemberVO memberVo,@RequestParam String hp1, @RequestParam String hp2,
			@RequestParam String hp3, @RequestParam String jumin1, @RequestParam String jumin2,
			@RequestParam String email1, @RequestParam String email2, @RequestParam String email3,
			Model model){
		//1.
		String memberHp = memberVo.getMemberHp();
		if (memberHp==null || memberHp.isEmpty()) {
			memberVo.setMemberHp(hp1+"-"+hp2+"-"+hp3);
		}
		
		String memberJumin = memberVo.getMemberJumin();
		
		if (memberJumin==null || memberJumin.isEmpty()) {
			memberVo.setMemberJumin(jumin1+"-"+jumin2);
		}
		
		if (email2.equals("etc")){
			memberVo.setMemberEmail(email1+"@"+email3);
		}else{
			memberVo.setMemberEmail(email1+"@"+email2);
		}
		
		
		String jumin = memberVo.getMemberJumin();
		logger.info("주민번호 중복 확인, 파라미터 jumin={}",jumin);

		int result = memberService.checkMemberJumin(jumin);
		logger.info("주민번호 중복확인 결과, result={}",result);
		
		//권한 코드 셋팅
		memberVo.setMemberGrade(MemberService.MEMBER_GRADE_ADMIN);
		logger.info("관리자 등록 처리, 파라미터 memberVo={}", memberVo);
		
		//2.
		int cnt = memberService.insertMember(memberVo);
		logger.info("관리자 등록 처리 결과, cnt={}", cnt);
		
		String msg ="",url="";
		if(cnt>0){
			msg="관리자 등록되었습니다";
			url="/admin/index.do";
		}else{
			msg="관리자 등록실패";
			url="/admin/member/memberAdd.do";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		//3.
		return "common/message";
	}
	
	/*@RequestMapping("/mainCount.do")
	public String mainCount(Model model){
		logger.info("메인 상단에 보일 창입니다.");
		
		int carApply = adminService.selectCountCarApply();
		int auctionStart = adminService.selectCountAuctionStart();
		int auctionEnd = adminService.selectCountAuctionEnd();
		int reportCar = adminService.selectCountReportCar();
		int reportNo = adminService.selectCountReportNo();
		int memberJoin = adminService.selectCountMemberJoin();
		int memberOut = adminService.selectCountMemberOut();
		
		model.addAttribute("carApply", carApply);
		model.addAttribute("auctionStart", auctionStart);
		model.addAttribute("auctionEnd", auctionEnd);
		model.addAttribute("reportCar", reportCar);
		model.addAttribute("reportNo", reportNo);
		model.addAttribute("memberJoin", memberJoin);
		model.addAttribute("memberOut", memberOut);
		
		return "admin/mainCount";
	}*/
	
	@RequestMapping("/highChart.do")
	public String highChart(Model model){
		List<Map<String, Object>> allauction = adminHighService.selectAllauction();
		List<Map<String, Object>> alllastbuyer = adminHighService.selectAllLastBuyer();
		List<Map<String, Object>> alltrade = adminHighService.selectAllTrade();
		List<Map<String, Object>> allsell = adminHighService.selectAllsell();
		List<Map<String, Object>> allsellfail = adminHighService.selectAllsellFail();
		List<Map<String, Object>> allrecord = adminHighService.selectAllRecord();
		
		for(Map<String, Object> allauclist : allauction){
			String list[] = new String[12];
			for(int i = 0;i<allauction.size();i++){
				list[i]= String.valueOf(allauclist.get("CNT"));
			}
			model.addAttribute("auctionlist", list);
		}
		
		for(Map<String, Object> alllastbuyerlist : alllastbuyer){
			String list[] = new String[12];
			for(int i = 0;i<alllastbuyer.size();i++){
				list[i]= String.valueOf(alllastbuyerlist.get("CNT"));
			}
			model.addAttribute("lastbuyerlist", list);
		}
		
		for(Map<String, Object> alltradelist : alltrade){
			String list[] = new String[12];
			for(int i = 0;i<alltrade.size();i++){
				list[i]= String.valueOf(alltradelist.get("CNT"));
			}
			model.addAttribute("alltradelist", list);
		}
		
		for(Map<String, Object> allselllist : allsell){
			String list[] = new String[12];
			for(int i = 0;i<allsell.size();i++){
				list[i]= String.valueOf(allselllist.get("CNT"));
			}
			model.addAttribute("allselllist", list);
		}
		
		for(Map<String, Object> allsellfaillist : allsellfail){
			String list[] = new String[12];
			for(int i = 0;i<allsellfail.size();i++){
				list[i]= String.valueOf(allsellfaillist.get("CNT"));
			}
			model.addAttribute("allsellfaillist", list);
		}

		for(Map<String, Object> allrecordlist : allrecord){
			String list[] = new String[12];
			for(int i = 0;i<allrecord.size();i++){
				list[i]= String.valueOf(allrecordlist.get("CNT"));
			}
			model.addAttribute("allrecordlist", list);
		}
		
		return "highChart/highChart";
	}
}
