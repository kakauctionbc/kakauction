package com.app.kaka.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.kaka.member.model.MemberService;
import com.app.kaka.member.model.MemberVO;


@Controller
@RequestMapping("/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;

	@RequestMapping("/agreement.do")
	public String agreement(){
		logger.info("약관동의 화면 보여주기");
		
		return "member/agreement";
	}
	
	@RequestMapping("/register.do")
	public String register(){
		logger.info("회원가입 페이지 보여주기");
		
		return "member/register";
	}
	
	@RequestMapping("/pwdCheck.do")
	public String pwdCheck(){
		logger.info("비밀번호 확인 페이지 보여주기");
		
		return "member/pwdCheck";
	}
	
	@RequestMapping("/memberAdd.do")
	public String memberAdd(@ModelAttribute MemberVO memberVo,@RequestParam String hp1, @RequestParam String hp2,
			@RequestParam String hp3, @RequestParam String jumin1, @RequestParam String jumin2,
			@RequestParam String email1, @RequestParam String email2, @RequestParam String email3,
			Model model){
		logger.info("회원가입 memberVo={}",memberVo);
		logger.info("주민 2 jumin2={}",jumin2);
		
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
		
		int cnt = memberService.insertMember(memberVo);
		logger.info("회원가입 결과 cnt={}",cnt);
		
		String msg="",url="";
		if(cnt>0){
			msg="가입 성공!";
			url="/main/main.do";
		}else{
			msg="가입 실패!";
			url="/member/register";
		}
		
		return "common/message";
	}
	
	@RequestMapping(value="/memberEdit.do", method=RequestMethod.GET)
	public String memberEdit_get(){
		logger.info("회원수정창 보여주기");
		
		return "member/memberEdit";
	}
}
