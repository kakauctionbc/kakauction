package com.app.kaka.auction.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/auction")
public class AuctionController {
	private static final Logger logger = LoggerFactory.getLogger(AuctionController.class);
	
	@RequestMapping(value="/write.do", method=RequestMethod.GET)
	public String write_get(){
		logger.info("경매 등록 화면 보여주기");
		return "auction/write";
	}
}
