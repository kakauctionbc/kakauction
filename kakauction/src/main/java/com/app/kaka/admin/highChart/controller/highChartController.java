package com.app.kaka.admin.highChart.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.kaka.auction.model.AuctionService;

@RequestMapping("/admin/highChart")
public class highChartController {
	private Logger logger = LoggerFactory.getLogger(highChartController.class);
	
	@Autowired
	private AuctionService auctionService;
	
	@RequestMapping("/")
	public String allAuctionChart(){
		
	}
}
