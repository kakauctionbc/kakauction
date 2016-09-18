package com.app.kaka.admin.highchart.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.kaka.auction.model.AuctionService;

@Controller
@RequestMapping("/admin/highChart")
public class AdminHighChartController {
	private Logger logger = LoggerFactory.getLogger(AdminHighChartController.class);
	
	@Autowired
	private AuctionService auctionService;
	
	@RequestMapping("/auctionChart.do")
	public String auctionChart(Model model){
		logger.info("관리자 메인페이지");
		List<Map<String, Object>> dayList = auctionService.selectAuctionDay();
		
		logger.info("경매 관련 그래프 dayList={}", dayList);
		logger.info("경매 관련 그래프 dayList.size={}", dayList.size());
		model.addAttribute("dayList", dayList);
		model.addAttribute("dayListsize", dayList.size());
		
		return "admin/highChart/auctionChart";
	}
}
