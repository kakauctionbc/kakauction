package com.app.kaka.auction.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
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
	public String write_post(@ModelAttribute AuctionVO auctionVo, @RequestParam String carBirth, @RequestParam String carSize , Model model){
		logger.info("경매 등록 처리, 파라미터 auctionVo={} ", auctionVo);
		String carYear = carBirth.substring(0,4);
		int cY = Integer.parseInt(carYear);
		if(carSize.equals(auctionService.CAR_SIZE_LIGHT)){
			auctionVo.setAuctionNoCar(100+cY-2000);
		}else if(carSize.equals()){
			auctionVo.setAuctionNoCar(200+cY-2000);
		}else if(carSize.equals()){
			auctionVo.setAuctionNoCar(300+cY-2000);
		}else if(carSize.equals()){
			auctionVo.setAuctionNoCar(400+cY-2000);
		}else if(carSize.equals()){
			auctionVo.setAuctionNoCar(500+cY-2000);
		}else if(carSize.equals()){
			auctionVo.setAuctionNoCar(600+cY-2000);
		}else if(carSize.equals()){
			auctionVo.setAuctionNoCar(700+cY-2000);
		}else if(carSize.equals()){
			auctionVo.setAuctionNoCar(800+cY-2000);
		}else if(carSize.equals()){
			auctionVo.setAuctionNoCar(900+cY-2000);
		}else if(carSize.equals()){
			auctionVo.setAuctionNoCar(1100+cY-2000);
		}else if(carSize.equals()){
			auctionVo.setAuctionNoCar(1200+cY-2000);
		}else if(carSize.equals()){
			auctionVo.setAuctionNoCar(1300+cY-2000);
		}
		Date from = new Date();
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy");
		String nowYear = transFormat.format(from);
		int nY = Integer.parseInt(nowYear);
		int minus = (nY-cY);
		int promp = auctionVo.getAuctionPromp();
		double min=(double)(promp*(minus*0.01));
		int first = (int)((double)(promp-min));
		auctionVo.setAuctionFirstprice(first);
		logger.info("경매초기 입찰가 설정된 auctionVo={} ", auctionVo);
		
		String msg="", url="";
		int cnt = auctionService.insertAuction(auctionVo);
		if(cnt>0){
			msg="경매가 등록되었습니다";
			url="/auction/list.do";
			auctionService.updateAuctionYn(auctionVo);
		}else{
			msg="경매 등록에 실패하였습니다";
			url="/auction/write.do";
			
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		return "common/message";
	}
	
	@RequestMapping("/selectCar.do")
	@ResponseBody
	public AuctionCarVO selectCar(@RequestParam String carNum){
		logger.info("carNum 넘어왔닝 carNum={}",carNum);
		AuctionCarVO vo = auctionService.auctionCar(carNum);
		logger.info("carNum 넘어왔닝 vo={}",vo);
		
		return vo;
	}
	
	@RequestMapping("/list.do")
	public String listAuction(){
		logger.info("경매 목록");
		
		return "auction/list";
	}
}
