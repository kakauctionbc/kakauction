package com.app.kaka.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.kaka.auction.controller.AuctionController;
import com.app.kaka.auction.model.AuctionService;
import com.app.kaka.op.model.OpService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AuctionController.class);
	
	@Autowired
	private AuctionService auctionService;
	
	@Autowired
	private OpService opService;
	
	@RequestMapping("/index.do")
	public String adminIndex(){
		return "admin/index";
	}

}
