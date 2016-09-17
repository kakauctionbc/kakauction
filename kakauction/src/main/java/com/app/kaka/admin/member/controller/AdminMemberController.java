package com.app.kaka.admin.member.controller;

import java.util.List;
import java.util.Map;

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
import com.app.kaka.auction.model.AuctionCarVO;
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
		
		List<MemberVO> memberList = memberService.selectAllMember();
		logger.info("회원 목록 조회 결과 memberList.size={}",memberList.size());
		
		model.addAttribute("memberList", memberList);
		
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
		
		/*System.out.println("list size === >" + memberList.size());
		boolean isSuccess = true;
		for (MemberVO memberVO : memberList) {
			String grade = memberVO.getMemberGrade();
			System.out.println("memervo === > "  + memberVO);
			if (!grade.equals("BLACKLIST")) {
				memberVO.setMemberGrade("BLACKLIST");
				int iCnt = adminService.updateGrade(memberVO);
				System.out.println("iCnt value === > " + iCnt);
				if(iCnt < 0){
					isSuccess = false;
				}
			}
		}*/
		
		int cnt = adminService.blackListMember(memberList);
		logger.info("선택한 상품 이벤트 등록결과 cnt={}", cnt);
		
		//3.
		String msg="", url="/admin/member/memberList.do";
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
		logger.info("선택한 상품 이벤트 등록결과 cnt={}", cnt);
		
		//3.
		String msg="", url="/admin/member/memberList.do";
		if(cnt>0){
			msg="선택한 상품을 이벤트 등록처리 하였습니다";
		}else{
			msg="이벤트 등록처리 실패하였습니다";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@RequestMapping(value="/downloadExcel.do")
    public String excelView_post(Model model) throws Exception{
        
        List<MemberVO> memberList=memberService.selectAllMember();
        logger.info("memberlist들어간건가... memberList.size={}",memberList.size());
        
        if (memberList!=null) {
        	WriteListToExcelFile.writeNoticeListToFile("memberList.xls", memberList);
        	logger.info("modellist 보야워 memberList={}",memberList);
        	model.addAttribute("msg","엑셀 다운로드 성공");
        	model.addAttribute("url","/admin/member/memberList.do");
        }
        
        return "common/message";
    }
	
	@RequestMapping("/memberDelete.do")
	public String memberDelete(@ModelAttribute MemberListVO memListvo, Model model){
		logger.info("선택한 회원 삭제 파라미터 memListvo={}",memListvo);
		
		List<MemberVO> memList = memListvo.getMemberItems();
		logger.info("memList.size={}",memList.size());
		
		int cnt = adminService.adminOutMember(memList);
		logger.info("선택한 아이디 삭제 처리 결과, cnt={}",cnt);
		
		String msg = "", url = "/admin/member/memberList.do";
		if (cnt>0) {
			msg = "선택한 회원을 삭제하였습니다.";
		}else{
			msg = "삭제 실패";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
}
