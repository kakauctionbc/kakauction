package com.app.kaka.delivery.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.kaka.car.model.CarService;
import com.app.kaka.car.model.CarVO;
import com.app.kaka.delivery.model.DeliveryService;
import com.app.kaka.member.model.MemberService;
import com.app.kaka.member.model.MemberVO;
import com.app.kaka.op.model.OpService;
import com.app.kaka.op.model.OpVO;
import com.app.kaka.picture.model.PictureService;
import com.app.kaka.picture.model.PictureVO;

@Controller
@RequestMapping("/delivery")
public class DeliveryController {
	
	private static final Logger logger = LoggerFactory.getLogger(DeliveryController.class);
	
	@Autowired
	private DeliveryService deliveryService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private CarService carService;
	
	@Autowired
	private OpService opService;
	
	@Autowired
	private PictureService pictureService;
	
	@RequestMapping("/detail.do")
	public String deliveryDetail(@RequestParam(defaultValue="0")int auctionNo,
			HttpSession session, Model model){
		String memberId = (String)session.getAttribute("memberId");
		
		logger.info("경매 결과 페이지 보여주기, 파라미터 auctionNo = {}, memberId = {}",auctionNo, memberId);
		if (auctionNo==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/auction/list.do");
			
			return "common/message";
		}
		Map<String, Object> myMap = new HashMap<String, Object>();
		myMap.put("buyerMemberId", memberId);
		myMap.put("auctionNo", auctionNo);
		
		Map<String, Object> map = deliveryService.selectARCView(myMap);
		MemberVO memVo = memberService.selectMemberByUserid(memberId);
		logger.info("딜리버리 페이지 간다간다! map = {}", map);
		
		model.addAttribute("map", map);
		model.addAttribute("memVo", memVo);
		
		CarVO carVo = carService.carDetail((String)map.get("CAR_NUM"));
		OpVO opVo = opService.opDetail((String)map.get("CAR_NUM"));
		PictureVO pictureVo = pictureService.pictureDetail((String)map.get("CAR_NUM"));
		
		MemberVO memberVo = memberService.selectMemberByUserid(carVo.getSellerMemberId());
		String[] opIn = null;
		String[] opOut = null;
		String[] opCon = null;
		String[] opSafe = null;
		String[] opAa = null;
		String[] opTune = null;
		
		if(opVo.getOpIn()!=null && !opVo.getOpIn().isEmpty()){
			opIn = opVo.getOpIn().split(",");
		}
		if(opVo.getOpOut()!=null && !opVo.getOpOut().isEmpty()){
			opOut = opVo.getOpOut().split(",");
		}
		if(opVo.getOpCon()!=null && !opVo.getOpCon().isEmpty()){
			opCon = opVo.getOpCon().split(",");
		}
		if(opVo.getOpSafe()!=null && !opVo.getOpSafe().isEmpty()){
			opSafe = opVo.getOpSafe().split(",");
		}
		if(opVo.getOpAa()!=null && !opVo.getOpAa().isEmpty()){
			opAa = opVo.getOpAa().split(",");
		}
		if(opVo.getOpTune()!=null && !opVo.getOpTune().isEmpty()){
			opTune = opVo.getOpTune().split(",");
		}
		
		model.addAttribute("carVo", carVo);
		model.addAttribute("opVo", opVo);
		model.addAttribute("pictureVo", pictureVo);
		model.addAttribute("memberVo", memberVo);
		model.addAttribute("opIn", opIn);
		model.addAttribute("opOut", opOut);
		model.addAttribute("opCon", opCon);
		model.addAttribute("opSafe", opSafe);
		model.addAttribute("opAa", opAa);
		model.addAttribute("opTune", opTune);
		
		return "delivery/detail";
	}
	@RequestMapping("/insertTrade.do")
	public String insertTrade(@RequestParam Map<Object, Object> data, Model model){
		if(data==null || data.isEmpty()){
			model.addAttribute("msg", "잘못된 url입니다");
			model.addAttribute("url", "/index.do");
			return "common/message";
		}

		String tradeType=(String)data.get("tradeType");
		logger.info("requestParam 으로 받은 map={}", data.isEmpty());
		logger.info("캭={}, 퉤={}", (String)data.get("title"), tradeType);
		int cnt = deliveryService.updateLastBuyerYn(data);
		int cnt1 = deliveryService.insertDelivery(data);
		logger.info("거래 성공 최종구매자 상태 업데이트 cnt={}",cnt);
		cnt = deliveryService.insertTrade(data);
		logger.info("거래 성공 거래테이블에 입력 cnt={}",cnt);
		model.addAttribute("data", data);
		logger.info("model에 담은 data={}",data);
		return "delivery/payment";
	}
}
