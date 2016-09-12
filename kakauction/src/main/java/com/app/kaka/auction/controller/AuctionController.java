package com.app.kaka.auction.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
import com.app.kaka.auction.model.HighPriceVO;
import com.app.kaka.buyer.model.BuyerVO;
import com.app.kaka.car.model.CarVO;
import com.app.kaka.common.PaginationInfo;
import com.app.kaka.common.SearchVO;
import com.app.kaka.common.Utility;
import com.app.kaka.op.model.OpService;
import com.app.kaka.op.model.OpVO;

@Controller
@RequestMapping("/auction")
public class AuctionController {
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
		return "auction/write";
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
	public String listAuction(@ModelAttribute SearchVO searchVo, Model model){
		logger.info("경매 목록");
		/*3. 글목록 조회
		/reBoard/list.do => ReBoardListController
		=> /reBoard/list.jsp*/
		//1. 파라미터 읽어오기
		logger.info("글목록 조회, 파라미터 searchVo={}", searchVo);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.BLOCK_SIZE);
		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
				
		//2. db작업 - select
		List<AuctionCarVO> alist = auctionService.selectAll(searchVo);
		logger.info("글목록 조회 결과 alist.size()={}", alist.size());
		
		//전체 레코드 개수 조회하기
		int totalRecord = auctionService.selectTotalCount(searchVo);
		logger.info("토탈레코드가 궁금 totalRecord={}",totalRecord);
		pagingInfo.setTotalRecord(totalRecord);
				
		//3. 결과 저장, 뷰페이지 리턴
		model.addAttribute("alist", alist);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "auction/list";
	}
	
	@RequestMapping("/updateCount.do")
	public String updateCount(@RequestParam int auctionNo, Model model){
		int cnt = auctionService.updateAuction(auctionNo);
		logger.info("조회수 증가 auctionNo={}, cnt ={}",auctionNo,cnt);
		return "redirect:/auction/beforeAuctionGo.do?auctionNo="+auctionNo;
	}
	
	@RequestMapping("/detail.do")
	public String auctionDetail(@RequestParam int auctionNo, Model model){
		AuctionCarVO acVo = auctionService.selectAuction(auctionNo);
		model.addAttribute("acVo", acVo);
		
		OpVO opVo = opService.opDetail(acVo.getCarNum());
		if(opVo.getOpAa()==null || opVo.getOpAa().isEmpty()){
			opVo.setOpAa("");
		}
		if(opVo.getOpCon()==null || opVo.getOpCon().isEmpty()){
			opVo.setOpCon("");
		}
		if(opVo.getOpIn()==null || opVo.getOpIn().isEmpty()){
			opVo.setOpIn("");
		}
		if(opVo.getOpOut()==null || opVo.getOpOut().isEmpty()){
			opVo.setOpOut("");
		}
		if(opVo.getOpSafe()==null || opVo.getOpSafe().isEmpty()){
			opVo.setOpSafe("");
		}
		if(opVo.getOpTune()==null || opVo.getOpTune().isEmpty()){
			opVo.setOpTune("");
		}
		
		String[] opIn = opVo.getOpIn().split(",");
		String[] opOut = opVo.getOpOut().split(",");
		String[] opCon = opVo.getOpCon().split(",");
		String[] opSafe = opVo.getOpSafe().split(",");
		String[] opAa = opVo.getOpAa().split(",");
		String[] opTune = opVo.getOpTune().split(",");
		
		model.addAttribute("opVo", opVo);
		model.addAttribute("opIn", opIn);
		model.addAttribute("opOut", opOut);
		model.addAttribute("opCon", opCon);
		model.addAttribute("opSafe", opSafe);
		model.addAttribute("opAa", opAa);
		model.addAttribute("opTune", opTune);
		return "auction/detail";
	}
	
	@RequestMapping("/auctionDeny.do")
	public String auctionDeny(@RequestParam String carNum, Model model){
		
		int cnt = auctionService.auctionDenyCar(carNum);
		
		String msg="", url="";
		
		if(cnt>0){
			msg="경매 등록 거부처리 되었습니다";
			url="/auction/write.do";
		}else{
			msg="경매 등록 거부처리 실패했습니다";
			url="/auction/write.do";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@RequestMapping("/auctionDefer.do")
	public String auctionDeferCar(@RequestParam String carNum, Model model){
		
		int cnt = auctionService.auctionDenyCar(carNum);
		
		String msg="", url="";
		
		if(cnt>0){
			msg="경매 등록 보류처리 되었습니다";
			url="/auction/write.do";
		}else{
			msg="경매 등록 보류처리 실패했습니다";
			url="/auction/write.do";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	@RequestMapping("/beforeAuctionGo.do")
	public String beforeAuctionGo(HttpSession session, @RequestParam(defaultValue="0") int auctionNo, Model model){
		String memberId = (String)session.getAttribute("memberId");
	    logger.info("경매 하기 화면 보여줌, 멤버 아이디 memberId={}, auctionNo={}",memberId, auctionNo);
	    
		BuyerVO buyerVo = new BuyerVO();
		buyerVo.setAuctionNo(auctionNo);
		buyerVo.setBuyerMemberId(memberId);
	    logger.info("경매 하기 insBVo={}",buyerVo);
		
	    int result = auctionService.selectBuyerByIdNo(buyerVo);
	    logger.info("result={}",result);
	    
	    if(result==0){
	    	int cnt = auctionService.insertByuer(buyerVo);
	    	logger.info("경매 하기 cnt1={}",cnt);
	    }else{
	    	return "redirect:/auction/auctiongo.do?auctionNo="+auctionNo;
	    }
	    return "redirect:/auction/auctiongo.do?auctionNo="+auctionNo;
	}
	@RequestMapping("/auctiongo.do")
	public String doAuction(HttpSession session, @RequestParam(defaultValue="0") int auctionNo, Model model){
	    if(auctionNo==0){
	    	model.addAttribute("msg", "잘못된 url입니다");
	    	model.addAttribute("url", "/auction/list.do");
	    	
	    	return "common/message";
	    }
		String memberId = (String)session.getAttribute("memberId");
	    logger.info("경매 하기 화면 보여줌, 멤버 아이디 memberId={}, auctionNo={}",memberId, auctionNo);
	
	    Map<String, Object> auctionGo = auctionService.selectAuctionGo(auctionNo);
	    logger.info("auctionGo 라는 이름의 map={}",auctionGo);
	    model.addAttribute("memberId", memberId);
	    model.addAttribute("auctionGo", auctionGo);
	    
	    AuctionCarVO acVo = auctionService.selectAuction(auctionNo);
		model.addAttribute("acVo", acVo);
		
		OpVO opVo = opService.opDetail(acVo.getCarNum());
		if(opVo.getOpAa()==null || opVo.getOpAa().isEmpty()){
			opVo.setOpAa("");
		}
		if(opVo.getOpCon()==null || opVo.getOpCon().isEmpty()){
			opVo.setOpCon("");
		}
		if(opVo.getOpIn()==null || opVo.getOpIn().isEmpty()){
			opVo.setOpIn("");
		}
		if(opVo.getOpOut()==null || opVo.getOpOut().isEmpty()){
			opVo.setOpOut("");
		}
		if(opVo.getOpSafe()==null || opVo.getOpSafe().isEmpty()){
			opVo.setOpSafe("");
		}
		if(opVo.getOpTune()==null || opVo.getOpTune().isEmpty()){
			opVo.setOpTune("");
		}
		
		String[] opIn = opVo.getOpIn().split(",");
		String[] opOut = opVo.getOpOut().split(",");
		String[] opCon = opVo.getOpCon().split(",");
		String[] opSafe = opVo.getOpSafe().split(",");
		String[] opAa = opVo.getOpAa().split(",");
		String[] opTune = opVo.getOpTune().split(",");
		
		model.addAttribute("opVo", opVo);
		model.addAttribute("opIn", opIn);
		model.addAttribute("opOut", opOut);
		model.addAttribute("opCon", opCon);
		model.addAttribute("opSafe", opSafe);
		model.addAttribute("opAa", opAa);
		model.addAttribute("opTune", opTune);
		
	    return "auction/auctiongo";
	}
	
	@RequestMapping("/insertAuctionGo.do")
	@ResponseBody
	public HighPriceVO insertAuction(@RequestParam Map<Object, Object> auctionmap){
		
		int auctionNo = Integer.parseInt((String)auctionmap.get("auctionNo"));
		String sellerid=(String)auctionmap.get("sellerMemberId");
		int recordPrice=Integer.parseInt((String)auctionmap.get("recordPrice"));
		int highPrice=Integer.parseInt((String)auctionmap.get("highPrice"));
		logger.info("auctionmap={}, 끝나고 auctionNo={}",auctionmap,auctionNo);
		
		HighPriceVO highVo = new HighPriceVO();
		int cnt=auctionService.selectHighPriceCount(auctionNo);
		logger.info("궁금함 cnt ={}",cnt);
		
		if(cnt<=0){
			highVo.setBuyerMemberId(sellerid);
			highVo.setRecordPrice(recordPrice);
			auctionmap.put("recordPrice", recordPrice+highPrice);
		}else{
			highVo = auctionService.selectHighPrice(auctionNo);
			int price = highVo.getRecordPrice();
			auctionmap.put("recordPrice", recordPrice+price);
		}
		logger.info("highVo 키 값이 궁금해서 찍어보는 highVo={}",highVo);
		
		cnt = auctionService.insertAuctionRecord(auctionmap);
		logger.info("cnt="+cnt);
		if(cnt>0){
			highVo = auctionService.selectHighPrice(auctionNo);
		}
		logger.info("highVo="+highVo);
		
		return highVo;
		
	}
	
	@RequestMapping("/rankAuction.do")
	@ResponseBody
	public HighPriceVO rankAuction(@RequestParam Map<Object, Object> auctionmap){
		//logger.info("1 auctionmap={}",auctionmap);
		String sellerid=(String)auctionmap.get("sellerMemberId");
		//logger.info("2 sellerid={}",sellerid);
		
		int recordPrice=Integer.parseInt((String)auctionmap.get("recordPrice"));
		int auctionNo = Integer.parseInt((String)auctionmap.get("auctionNo"));
		//logger.info("3 recordPrice={}",recordPrice);
		//logger.info("4 auctionNo={}",auctionNo);
		
		int cnt=auctionService.selectHighPriceCount(auctionNo);
		HighPriceVO highVo = new HighPriceVO();
		//logger.info("5 cnt={}",cnt);
		
		if(cnt<=0){
			highVo.setBuyerMemberId(sellerid);
			highVo.setRecordPrice(recordPrice);
			//logger.info("6 highVo={}",highVo);
		}else{
			highVo = auctionService.selectHighPrice(auctionNo);
			//logger.info("7 highVo={}",highVo);
		}
		return highVo;
	}
}
