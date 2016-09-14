package com.app.kaka.admin.controller;

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

import com.app.kaka.auction.controller.AuctionController;
import com.app.kaka.auction.model.AuctionService;
import com.app.kaka.auction.model.AuctionVO;
import com.app.kaka.car.model.CarVO;
import com.app.kaka.op.model.OpService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AuctionController.class);
	
	@Autowired
	private AuctionService auctionService;
	
	@Autowired
	private OpService opService;
	
	@RequestMapping(value="/write.do", method=RequestMethod.GET)
	public String write_get(Model model){
		logger.info("경매 등록 화면 보여주기");
		List<CarVO> alist = auctionService.carlist();
		model.addAttribute("carAlist", alist);
		return "admin/auctionWrite";
	}
	
	@RequestMapping(value="/write.do", method=RequestMethod.POST)
	public String write_post(@ModelAttribute AuctionVO auctionVo, @RequestParam String carBirth, @RequestParam String carSize , Model model){
		logger.info("경매 등록 처리, 파라미터 auctionVo={} ", auctionVo);
		
		String carYear = carBirth.substring(0,4);
		int cY = Integer.parseInt(carYear);
		if(carSize.equals(auctionService.CAR_SIZE_LIGHT)){
			auctionVo.setAuctionNoCar(100+cY-2000);
		}else if(carSize.equals(auctionService.CAR_SIZE_SMALL)){
			auctionVo.setAuctionNoCar(200+cY-2000);
		}else if(carSize.equals(auctionService.CAR_SIZE_ALMOSTMIDDLE)){
			auctionVo.setAuctionNoCar(300+cY-2000);
		}else if(carSize.equals(auctionService.CAR_SIZE_MIDDLE)){
			auctionVo.setAuctionNoCar(400+cY-2000);
		}else if(carSize.equals(auctionService.CAR_SIZE_LARGE)){
			auctionVo.setAuctionNoCar(500+cY-2000);
		}else if(carSize.equals(auctionService.CAR_SIZE_LIMU)){
			auctionVo.setAuctionNoCar(600+cY-2000);
		}else if(carSize.equals(auctionService.CAR_SIZE_SPORTS)){
			auctionVo.setAuctionNoCar(700+cY-2000);
		}else if(carSize.equals(auctionService.CAR_SIZE_SUV)){
			auctionVo.setAuctionNoCar(800+cY-2000);
		}else if(carSize.equals(auctionService.CAR_SIZE_RV)){
			auctionVo.setAuctionNoCar(900+cY-2000);
		}else if(carSize.equals(auctionService.CAR_SIZE_POTER)){
			auctionVo.setAuctionNoCar(1000+cY-2000);
		}else if(carSize.equals(auctionService.CAR_SIZE_VAN)){
			auctionVo.setAuctionNoCar(1100+cY-2000);
		}else if(carSize.equals(auctionService.CAR_SIZE_CAMP)){
			auctionVo.setAuctionNoCar(1200+cY-2000);
		}else if(carSize.equals(auctionService.CAR_SIZE_BUS)){
			auctionVo.setAuctionNoCar(1300+cY-2000);
		}
		String grade = auctionService.selectMemberGrade(auctionVo.getSellerMemberId());
		if(grade.equals(auctionService.MEMBER_VIP)){
			auctionVo.setAuctionFinishTime(3);
		}else if(grade.equals(auctionService.MEMBER_RVIP)){
			auctionVo.setAuctionFinishTime(7);
		}else if(grade.equals(auctionService.MEMBER_VVIP)){
			auctionVo.setAuctionFinishTime(14);
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
			url="/admin/auctionList.do";
			auctionService.updateAuctionYn(auctionVo);
		}else{
			msg="경매 등록에 실패하였습니다";
			url="/admin/auctionWrite.do";
			
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		return "common/message";
	}
}
