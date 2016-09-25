package com.app.kaka.admin.member.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import com.app.kaka.admin.member.model.AdminMemberService;
import com.app.kaka.admin.member.model.MemberListVO;
import com.app.kaka.admin.visit.model.VisiteDAO;
import com.app.kaka.auction.model.AuctionCarVO;
import com.app.kaka.common.MemDeSearchVO;
import com.app.kaka.common.PaginationInfo;
import com.app.kaka.common.SearchVO;
import com.app.kaka.common.Utility;
import com.app.kaka.excel.model.WriteListToExcelFile;
import com.app.kaka.member.model.MemberService;
import com.app.kaka.member.model.MemberVO;

@Controller
@RequestMapping("/admin/member")
public class AdminMemberController {
	private static final Logger logger = LoggerFactory.getLogger(AdminMemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private AdminMemberService adminService;
	
	
	@RequestMapping("/memberList.do")
	public String memberList_get(@ModelAttribute SearchVO searchVo,Model model){
		logger.info("회원 목록 보여주기");
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.BLOCK_SIZE);
		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		
		int totalRecord = memberService.memberAllCount2(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
		model.addAttribute("totalRecord", totalRecord);
		
		List<MemberVO> memberList = memberService.selectAllMember2(searchVo);
		logger.info("회원 목록 조회 결과 memberList.size={}",memberList.size());
		
		model.addAttribute("memList", memberList);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "admin/member/memberList";
	}
	
	@RequestMapping(value="/memberById.do", method=RequestMethod.GET)
	public String memberById_get(@RequestParam String memberId,Model model){
		logger.info("회원 상세 읽어오기 memberId={}",memberId);
		
		MemberVO memberVo = memberService.selectMemberByUserid(memberId);
		
		model.addAttribute("memVo", memberVo);
		
		return "admin/member/memberById";
	}
	
	@RequestMapping("/memberBlack.do")
	public String blackList(@ModelAttribute MemberVO memberVo,@ModelAttribute MemberListVO memListVo, Model model){
		//1.
		logger.info("선택한 멤버 파라미터 memberVo={}",memberVo);
		//2.
		List<MemberVO> memberList = memListVo.getMemberItems();
		logger.info("선택한 아이디 memberList={}",memberList);
		
		int cnt = adminService.blackListMember(memberList);
		logger.info("선택한 아이디 불량회원 등록결과 cnt={}", cnt);
		
		//3.
		String msg="", url="/admin/member/memberSearchList.do";
		if(cnt>0){
			msg="선택한 아이디를 불량회원으로 설정하였습니다.";
		}else{
			msg="불량회원 등록처리 실패하였습니다";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@RequestMapping("/memberGrade.do")
	public String updateGrade(@ModelAttribute MemberListVO memListVo, @RequestParam String eventSel, Model model){
		List<MemberVO> memList = memListVo.getMemberItems();
		int cnt = adminService.updateMemberGrade(memList, eventSel);
		logger.info("선택한 아이디 등급 업데이트 등록결과 cnt={}", cnt);
		
		//3.
		String msg="", url="/admin/member/memberSearchList.do";
		if(cnt>0){
			msg="선택한 아이디를 등급처리 하였습니다";
		}else{
			msg="선택한 아이디를 등급처리하지 못했습니다";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@RequestMapping(value="/downloadExcel.do")
    public String excelView_post(Model model,HttpServletResponse response) throws Exception{
        
        List<MemberVO> memberList=memberService.selectAllMember();
        logger.info("memberlist들어간건가... memberList.size={}",memberList.size());
        
        if (memberList!=null) {
        	WriteListToExcelFile.writeNoticeListToFile("memberList.xls", memberList, response);
        	logger.info("modellist 보야워 memberList={}",memberList);
        	model.addAttribute("msg","엑셀 다운로드 성공");
        	model.addAttribute("url","/admin/member/memberSearchList.do");
        }
        
        return "common/message";
    }
	
	@RequestMapping("/memberView.do")
	public String excelDown(Map<String, Object> ModelMap,Model model){
		List<MemberVO> memberList=memberService.selectAllMember();
		logger.info("memberlist들어간건가... memberList.size={}",memberList.size());
        ModelMap.put("list", memberList);
        	
        if (memberList!=null) {
			model.addAttribute("msg", "성공");
			model.addAttribute("url", "/admin/member/memberList.do");
		}
        
        return "common/message";
	}
	
	@RequestMapping("/memberDelete.do")
	public String memberDelete(@ModelAttribute MemberListVO memListvo, Model model){
		logger.info("선택한 회원 삭제 파라미터 memListvo={}",memListvo);
		
		List<MemberVO> memList = memListvo.getMemberItems();
		logger.info("memList.size={}",memList.size());
		logger.info("memList={}",memList);
		
		int cnt = adminService.adminOutMember(memList);
		logger.info("선택한 아이디 삭제 처리 결과, cnt={}",cnt);
		
		String msg = "", url = "/admin/member/memberSearchList.do";
		if (cnt>0) {
			msg = "선택한 회원을 삭제하였습니다.";
		}else{
			msg = "삭제 실패";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@RequestMapping("/auctionMember.do")
	public String auctionMember(@ModelAttribute SearchVO searchVo,Model model){
		logger.info("경매 참여 회원 보기");
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.BLOCK_SIZE);
		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		
		int totalRecord = adminService.AuctionMemberCount(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
		model.addAttribute("totalRecord", totalRecord);
		
		List<Map<String, Object>> alist = adminService.selectAuctionMember(searchVo);
		
		model.addAttribute("aMemList", alist);
		model.addAttribute("pagingInfo", pagingInfo);
		
		
		return "admin/member/auctionMember";
	}
	
	@RequestMapping("/visitNum.do")
	public String memberCount(HttpServletRequest request, HttpServletResponse response){
		logger.info("방문자수 보기");
		
		VisiteDAO  visitDao = new VisiteDAO();
		
		int todayCount = visitDao.todayCount();
		logger.info("오늘 수 ===>>",todayCount);
		int totalCount = visitDao.totalCount();
		logger.info("모든 수 ===>>",totalCount);
		
		HttpSession session = request.getSession();
		
		//세션 속성에 담아주기
		session.setAttribute("totalCount", totalCount);
		session.setAttribute("todayCount", todayCount);
		
		return "admin/member/visitNum";
	}
	
	@RequestMapping(value="/memberSearch.do", method=RequestMethod.GET)
	public String memberSearch_get(@ModelAttribute SearchVO searchVo,Model model){
		logger.info("회원 정보 조회");
		logger.info("회원 목록 보여주기");
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.BLOCK_SIZE);
		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		
		int totalRecord = memberService.memberAllCount2(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
		model.addAttribute("totalRecord", totalRecord);
		
		List<MemberVO> memberList = memberService.selectAllMember2(searchVo);
		logger.info("회원 목록 조회 결과 memberList.size={}",memberList.size());
		
		model.addAttribute("memList", memberList);
		model.addAttribute("pagingInfo", pagingInfo);
		
		
		return "admin/member/memberSearch";
	}
	
	@RequestMapping(value="/memberSearch.do", method=RequestMethod.POST)
	public String memberSearch_post(@RequestParam(required=false) String[] memberMileages,
			@RequestParam(required=false) String[] memberGrades,
			@RequestParam(required=false) String[] memberGenders,
			Model model){
		logger.info("파라미터 : memberMileages={},memberGrades={}", memberMileages, memberGrades);
		logger.info("파라미터 : memberGenders={}", memberGenders);
		if(memberMileages!=null)logger.info("파라미터 : memberMileages.len={}", memberMileages.length);
		List<MemDeSearchVO> memList = new ArrayList<MemDeSearchVO>();
		if (memberMileages!=null || memberGrades!=null || memberGenders!=null) {
			Map<String, Object> map = new HashMap<String, Object>();
			logger.info("검색하니");
			map.put("memberMileages", memberMileages);
			map.put("memberGrades", memberGrades);
			map.put("memberGenders", memberGenders);
			
			/*memList = adminService.selectPdByConditionForeach(map);
			logger.info("상품 검색 결과 : memList.size()={}",memList.size());
			model.addAttribute("totalRecord", memList.size());
			logger.info("상품 검색 결과 : memList={}",memList);*/
		}
		
		model.addAttribute("memList", memList);
		
		return "admin/member/memberSearch";
	}
	
	@RequestMapping("/memberSearchList.do")
	public String memberSearchList_get(@ModelAttribute MemDeSearchVO searchVo,
			Model model){
		logger.info("멤버 리스트 보여주기");
		logger.info("받아온건 맞니..?==>{}",searchVo);
		logger.info("등급은 있니>==>{}",searchVo.getMemberGrade());
		logger.info("성별은 있니==>{}",searchVo.getMemberGender());
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.BLOCK_SIZE);
		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		List<MemberVO> memList = adminService.selectPdByConditionForeach(searchVo);

		int totalRecord = memberService.selectAllMemberCount2(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
		logger.info("totalRecord={}",totalRecord);
		
		
		model.addAttribute("search", totalRecord);
		model.addAttribute("memList",memList);
		model.addAttribute("pagingInfo", pagingInfo);
		return "admin/member/memberSearchList";
	}
	
	@RequestMapping("/outMemberList.do")
	public String outMemberList(){
		return "admin/member/outMemberList";
	}
	
}
