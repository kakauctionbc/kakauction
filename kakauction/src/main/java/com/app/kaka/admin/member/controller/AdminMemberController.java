package com.app.kaka.admin.member.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.kaka.member.model.MemberService;
import com.app.kaka.member.model.MemberVO;

@Controller
@RequestMapping("/admin/member")
public class AdminMemberController {
	private static final Logger logger = LoggerFactory.getLogger(AdminMemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/memberList.do")
	public String memberList_get(Model model){
		logger.info("회원 목록 보여주기");
		
		List<MemberVO> memberList = memberService.selectAllMember();
		
		for (MemberVO memberVO : memberList) {
			String jumin = memberVO.getMemberJumin();
		}
		
		model.addAttribute("memberList", memberList);
		
		return "admin/member/memberList";
	}
}
