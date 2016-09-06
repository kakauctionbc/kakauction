package com.app.kaka.auction.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.app.kaka.auction.model.AuctionCarVO;
import com.app.kaka.auction.model.AuctionService;
import com.app.kaka.auction.model.AuctionVO;
import com.app.kaka.car.model.CarVO;

@Controller
@RequestMapping("/auction")
public class AuctionController {
	private static final Logger logger = LoggerFactory.getLogger(AuctionController.class);
	
	@Autowired
	private AuctionService auctionService;
	
	@RequestMapping(value="/write.do", method=RequestMethod.GET)
	public String write_get(Model model){
		logger.info("경매 등록 화면 보여주기");
		List<CarVO> alist = auctionService.carlist();
		model.addAttribute("carAlist", alist);
		return "auction/write";
	}
	@RequestMapping(value="/write.do", method=RequestMethod.POST)
	public String write_post(@ModelAttribute AuctionVO vo, Model model){
		logger.info("경매 등록 처리, 파라미터");
		return "auction/write";
	}
	
	@RequestMapping("/selectCar.do")
	@ResponseBody
	public AuctionCarVO selectCar(@RequestParam String carNum){
		logger.info("carNum 넘어왔닝 carNum={}",carNum);
		AuctionCarVO vo = auctionService.auctionCar(carNum);
		logger.info("carNum 넘어왔닝 vo={}",vo);
		
		return vo;
	}
}
