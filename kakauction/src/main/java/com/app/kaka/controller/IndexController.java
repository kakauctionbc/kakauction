package com.app.kaka.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.kaka.auction.model.AuctionCarVO;
import com.app.kaka.auction.model.AuctionService;

@Controller
public class IndexController {
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	@Autowired
	private AuctionService auctionService;
	
	@RequestMapping("/index.do")
	public String index(Model model){
		logger.info("index페이지다");
		
		Map<String, Object> map = auctionService.selectAllCarSize();
		List<AuctionCarVO> bestalist = auctionService.bestAuction(3);
		
		model.addAttribute("bestalist",bestalist);
		model.addAttribute("map", map);
		
		return "index";
	}
}
