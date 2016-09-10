package com.app.kaka.report.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.kaka.auction.model.AuctionVO;
import com.app.kaka.report.model.ReportService;

@Controller
@RequestMapping("/report")
public class ReportController {
	private Logger logger = LoggerFactory.getLogger(ReportController.class);
	
	@Autowired
	private ReportService reportService;
	
	@RequestMapping(value="/auctionReport.do", method=RequestMethod.GET)
	public String regReport(@RequestParam String memberId, @RequestParam int auctionNo, Model model){
		logger.info("auctionNo={}",auctionNo);
		AuctionVO auctionVo = reportService.selectAuctionInfo(auctionNo);
		model.addAttribute("memberId", memberId);
		model.addAttribute("auctionVo", auctionVo);
		return "report/regReport";
	}
}
