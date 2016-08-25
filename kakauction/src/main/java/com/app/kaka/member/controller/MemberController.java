package com.app.kaka.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@RequestMapping("/agreement.do")
	public String agreement(){
		logger.info("약관동의 화면 보여주기");
		
		return "member/agreement";
	}
}
