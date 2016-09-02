package com.app.kaka.design.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/design")
public class DesignController {
	private static final Logger logger = LoggerFactory.getLogger(DesignController.class);
	
	@RequestMapping("/index.do")
	public String index(){
		logger.info("index페이지");
		
		return "/design/main/index";
	}
	
	@RequestMapping("/down.do")
	public String down(){
		logger.info("index페이지");
		
		return "/design/test/down";
	}
	
	@RequestMapping("/top.do")
	public String top(){
		logger.info("top페이지");
		
		return "/design/inc/top";
	}
	
	@RequestMapping("/bottom.do")
	public String bottom(){
		logger.info("bottom페이지");
		
		return "/design/inc/bottom";
	}
	
	@RequestMapping("/login.do")
	public String login(){
		logger.info("로그인 페이지");
		
		return "/design/login/login";
	}
	
	@RequestMapping("/register.do")
	public String register(){
		logger.info("회원가입 페이지");
		
		return "/design/member/register";
	}
	@RequestMapping("/register_ok.do")
	public String register_ok(){
		logger.info("회원가입완료 페이지");
		
		return "/design/member/register_ok";
	}
	@RequestMapping("/checkUserid.do")
	public String checkUserid(){
		logger.info("회원가입 페이지");
		
		return "/design/member/checkUserid";
	}
	
	@RequestMapping("/agreement.do")
	public String agreement(){
		logger.info("가입동의 페이지");
		
		return "/design/member/agreement";
	}
	@RequestMapping("/member_edit.do")
	public String member_edit(){
		logger.info("회원정보수정 페이지");
		
		return "/design/member/member_edit";
	}
	@RequestMapping("/pwdCheck.do")
	public String pwdCheck(){
		logger.info("비밀번호확인 페이지");
		
		return "/design/member/pwdCheck";
	}
	@RequestMapping("/memberOut.do")
	public String memberOut(){
		logger.info("비밀번호확인 페이지");
		
		return "/design/member/memberOut";
	}
	
}
