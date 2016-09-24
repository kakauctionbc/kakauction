package com.app.kaka.footer.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/footer")
public class FooterController {
	private static final Logger logger = LoggerFactory.getLogger(FooterController.class);
	
	@RequestMapping("/agreementPop.do")
	public String index(){
		logger.info("약관동의페이지");
		
		return "footer/agreementPop";
	}
}