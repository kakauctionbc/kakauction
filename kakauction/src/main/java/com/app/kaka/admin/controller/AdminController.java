package com.app.kaka.admin.controller;

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
	private OpService opService;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/index.do")
	public String adminIndex(Model model){
		
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
			session.setAttribute("adminUserid", memVo.getMemberId());
			session.setAttribute("adminUserName", memberVo.getMemberName());
			session.setAttribute("adminGrade", memVo.getMemberGrade());
			//[2]쿠키에 저장
			Cookie ck = new Cookie("admin_ck_userid",memVo.getMemberId());
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
		session.removeAttribute("adminUserid");
		session.removeAttribute("adminUserName");
		session.removeAttribute("adminGrade");
		
		//3.
		model.addAttribute("msg", "로그아웃되었습니다.");
		model.addAttribute("url", "/admin/login/adminLogin.do");
		
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
}
