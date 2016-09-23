package com.app.kaka.auction.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
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

import com.app.kaka.admin.scheduler.KakauctionScheduler;
import com.app.kaka.auction.model.AuctionCarVO;
import com.app.kaka.auction.model.AuctionService;
import com.app.kaka.auction.model.AuctionVO;
import com.app.kaka.auction.model.HighPriceVO;
import com.app.kaka.buyer.model.BuyerVO;
import com.app.kaka.car.model.CarVO;
import com.app.kaka.carAm.model.CarAmVO;
import com.app.kaka.carsize.model.CarsizeVO;
import com.app.kaka.common.DateSearchVO;
import com.app.kaka.common.PaginationInfo;
import com.app.kaka.common.SearchVO;
import com.app.kaka.common.Utility;
import com.app.kaka.common.DetailSearchVO;
import com.app.kaka.gas.model.GasVO;
import com.app.kaka.member.model.MemberVO;
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
	
	@Autowired
	private KakauctionScheduler sc;
	
	/*@RequestMapping(value="/write.do", method=RequestMethod.GET)
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
	}*/
	
	@RequestMapping("/list.do")
	public String listAuction(@RequestParam(required=false) String[] carSizes,
			@RequestParam(required=false) String[] carGases , @RequestParam(required=false) String birth1,
			@RequestParam(required=false) String birth2,@RequestParam(required=false) String priceS,
			@RequestParam(required=false) String priceD, @RequestParam(required=false) String auctionFirstprice, 
			@RequestParam(required=false) String auctionFirstprice2,@ModelAttribute DetailSearchVO searchVo, Model model){
		logger.info("경매 목록");
		//1. 파라미터 읽어오기
		logger.info("글목록 조회, 파라미터 searchVo={}", searchVo);
		logger.info("글목록 조회, 파라미터 carSizes={}", carSizes);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.BLOCK_SIZE);
		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		
		List<AuctionCarVO> alist = auctionService.selectAucList(searchVo);
		//2. db작업 - select
		logger.info("글목록 조회 결과 alist.size()={}", alist.size());
		
		//전체 레코드 개수 조회하기
		int totalRecord = auctionService.selectListCount(searchVo);
		logger.info("토탈레코드가 궁금 totalRecord={}",totalRecord);
		pagingInfo.setTotalRecord(totalRecord);
		
		//상세검색carsizeList
		List<GasVO> cargasList =auctionService.selectCarGas();
		List<CarsizeVO> carsizeList =auctionService.selectCarsize();
		List<CarAmVO> carAmList = auctionService.selectCarAm();
		logger.info("carsizeList 궁금 carsizeList={}, size={}",carsizeList, carsizeList.size());
		logger.info("cargasList 궁금 cargasList={}, size={}",cargasList, cargasList.size());
		
		//3. 결과 저장, 뷰페이지 리턴
		model.addAttribute("carAmList", carAmList);
		model.addAttribute("carsizeList", carsizeList);
		model.addAttribute("cargasList", cargasList);
		model.addAttribute("alist", alist);
		model.addAttribute("alistsize", alist.size());
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "auction/list";
	}
	
	@RequestMapping("/todayList.do")
	public String todayListAuction(@ModelAttribute SearchVO searchVo, Model model){
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
		
		//전체 레코드 개수 조회하기
		List<AuctionCarVO> alist = auctionService.selectTodayList(searchVo);
		pagingInfo.setTotalRecord(alist.size());
		//3. 결과 저장, 뷰페이지 리턴
		model.addAttribute("alist", alist);
		model.addAttribute("alistsize", alist.size());
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "auction/todayList";
	}
	
	@RequestMapping("/updateCount.do")
	public String updateCount(@RequestParam int auctionNo, Model model){
		int cnt = auctionService.updateAuction(auctionNo);
		logger.info("조회수 증가 auctionNo={}, cnt ={}",auctionNo,cnt);
		return "redirect:/auction/beforeAuctionGo.do?auctionNo="+auctionNo;
	}
	
	@RequestMapping("/myAuctionList.do")
	public String myAuction(@ModelAttribute DateSearchVO vo, HttpSession session, Model model){
		logger.info("경매 목록");
		String memberId = (String)session.getAttribute("memberId");
		vo.setMemberId(memberId);
		logger.info("글목록 조회, 파라미터 vo={}", vo);
		if(vo.getStartDay()==null || vo.getStartDay().isEmpty()){				
			Date d = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String today = sdf.format(d);
			
			vo.setStartDay(today);
			vo.setEndDay(today);
		}
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.MAUCLIST_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(vo.getCurrentPage());
		logger.info("글목록 조회, 파라미터 vo={}", vo);
		
		vo.setBlockSize(Utility.BLOCK_SIZE);
		vo.setRecordCountPerPage(Utility.MAUCLIST_COUNT_PER_PAGE);
		vo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("글목록 조회, 파라미터 vo={}", vo);
		
		//2. db작업 - select
		List<Map<String, Object>> alist = auctionService.selectMyAuctionList(vo);
		logger.info("글목록 조회 결과 alist.size()={}", alist.size());
		//전체 레코드 개수 조회하기
		pagingInfo.setTotalRecord(alist.size());
				
		//3. 결과 저장, 뷰페이지 리턴
		model.addAttribute("alist", alist);
		model.addAttribute("alistsize", alist.size());
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "auction/myAuctionList";
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
	    String state = (String)auctionGo.get("AUCTION_STATE");
	    if(state.equals("END")){
	    	model.addAttribute("msg", "이미 종료된 경매입니다");
	    	model.addAttribute("url", "/auction/list.do");
	    	
	    	return "common/message";
	    }
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
		String state = auctionService.selectAucBynoToState(auctionNo);
		if(state.equals("END")){
			highVo.setBuyerMemberId("종료된 경매입니다");
			highVo.setRecordPrice(0);
			highVo.setAuctionState(state);
			return highVo;
		}
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
			highVo.setAuctionState(state);
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
		HighPriceVO highVo = new HighPriceVO();
		int recordPrice=Integer.parseInt((String)auctionmap.get("recordPrice"));
		int auctionNo = Integer.parseInt((String)auctionmap.get("auctionNo"));
		String state = auctionService.selectAucBynoToState(auctionNo);
		if(state.equals("END")){
			highVo.setBuyerMemberId("종료된 경매입니다");
			highVo.setRecordPrice(0);
			highVo.setAuctionState(state);
			return highVo;
		}
		//logger.info("4 auctionNo={}",auctionNo);
		
		int cnt=auctionService.selectHighPriceCount(auctionNo);
		
		//logger.info("5 cnt={}",cnt);
		
		if(cnt<=0){
			highVo.setBuyerMemberId(sellerid);
			highVo.setRecordPrice(recordPrice);
			//logger.info("6 highVo={}",highVo);
		}else{
			highVo = auctionService.selectHighPrice(auctionNo);
			highVo.setAuctionState(state);
			//logger.info("7 highVo={}",highVo);
		}
		return highVo;
	}
	
	@RequestMapping("/auctionSuccess.do")
	public String auctionSuccess(@ModelAttribute DateSearchVO vo, HttpSession session, Model model){
		sc.reFresh();
		logger.info("낙찰된 경매");
		String memberId = (String)session.getAttribute("memberId");
		vo.setMemberId(memberId);
		logger.info("글목록 조회, 파라미터 vo={}", vo);
		if(vo.getStartDay()==null || vo.getStartDay().isEmpty()){				
			Date d = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String today = sdf.format(d);
			
			vo.setStartDay(today);
			vo.setEndDay(today);
		}
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.MAUCLIST_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(vo.getCurrentPage());
		
		vo.setBlockSize(Utility.BLOCK_SIZE);
		vo.setRecordCountPerPage(Utility.MAUCLIST_COUNT_PER_PAGE);
		vo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		
		List<Map<String, Object>> alist = auctionService.selectLastBuyer(vo);
		model.addAttribute("alist", alist);
		model.addAttribute("alistsize", alist.size());
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "auction/auctionSuccess";
	}
	
	@RequestMapping(value="/detailSearch.do", method=RequestMethod.GET)
	public String detailSearch(Model model){
		logger.info("디테일 서치");
		//상세검색carsizeList
		List<CarsizeVO> carsizeList =auctionService.selectCarsize();
		List<GasVO> cargasList =auctionService.selectCarGas();
		logger.info("carsizeList 궁금 carsizeList={}, size={}",carsizeList, carsizeList.size());
		logger.info("cargasList 궁금 cargasList={}, size={}",cargasList, cargasList.size());
		
		model.addAttribute("carsizeList", carsizeList);
		model.addAttribute("cargasList", cargasList);
		
		return "detailSearch/detailSearch";
	}
	
	//내가 등록한 차량의 경매보기
	@RequestMapping("/myCarAucList.do")
	public String myCarAucList(@ModelAttribute DateSearchVO searchVo,HttpSession session, Model model){
		logger.info("내가 등록한 차량 경매 보기");
		
		String memberId = (String)session.getAttribute("memberId");
		searchVo.setMemberId(memberId);
		
		logger.info("글목록 조회, 파라미터 vo={}", searchVo);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.MAUCLIST_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		logger.info("글목록 조회, 파라미터 vo={}", searchVo);
		
		searchVo.setBlockSize(Utility.BLOCK_SIZE);
		searchVo.setRecordCountPerPage(Utility.MAUCLIST_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("글목록 조회, 파라미터 vo={}", searchVo);
		
		//2. db작업 - select
		List<Map<String, Object>> alist = auctionService.myCarAucList(searchVo);
		logger.info("글목록 조회 결과 alist.size()={}", alist.size());
		//전체 레코드 개수 조회하기
		pagingInfo.setTotalRecord(alist.size());
				
		//3. 결과 저장, 뷰페이지 리턴
		model.addAttribute("alist", alist);
		model.addAttribute("alistsize", alist.size());
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "auction/myCarAucList";
	}
	
	@RequestMapping("/front_schedule_list.do")
	public String auctionSchedule(@ModelAttribute SearchVO searchVo,Model model){
		logger.info("경매일정창");
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.SCHEDULE_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.BLOCK_SIZE);
		searchVo.setRecordCountPerPage(Utility.SCHEDULE_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		
		int totalRecord = auctionService.selectAllScheduleCount(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
		model.addAttribute("totalRecord", totalRecord);
		
		List<AuctionVO> auctionList = auctionService.selectAllSchedule(searchVo);
		logger.info("회원 목록 조회 결과 auctionList.size={}",auctionList.size());
		
		model.addAttribute("auctionList", auctionList);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "auction/front_schedule_list";
	}
	
	@RequestMapping("/main_schedule_list.do")
	public String mainSchedule(Model model){
		logger.info("메인에 띄우기");
		
		List<AuctionVO> mainList = auctionService.mainSchedule();
		logger.info("메인에 띄우기 mainList={}",mainList);
		
		model.addAttribute("schedule", mainList);
		
		return "auction/main_schedule_list";
	}
	
	@RequestMapping("/againAuction.do")
	public String againAuction(@ModelAttribute AuctionVO auctionVo, @RequestParam(defaultValue="0") int alertNo, Model model){
		if (alertNo==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/msg/myList.do");
			
			return "common/message";
		}
		logger.info("재 등록하기 auctionVo = {}", auctionVo);
		AuctionVO beforeAuctionVo = auctionService.selectAucByAuctionNo(auctionVo.getAuctionNo());
		
		String grade = auctionService.selectMemberGrade(auctionVo.getSellerMemberId());
		
		if(grade.equals(auctionService.MEMBER_VIP)){
			beforeAuctionVo.setAuctionFinishTime(3);
		}else if(grade.equals(auctionService.MEMBER_RVIP)){
			beforeAuctionVo.setAuctionFinishTime(7);
		}else if(grade.equals(auctionService.MEMBER_VVIP)){
			beforeAuctionVo.setAuctionFinishTime(14);
		}
		
		
		logger.info("경매 재등록하기, 파라미터 AuctionVO = {}", beforeAuctionVo);
		int cnt = auctionService.againAuction(auctionVo);
		
		String msg="", url="/alert/detail.do?alertNo="+alertNo;
		if(cnt>0){
			msg="경매가 재 등록되었습니다";
			auctionService.updateAuctionYn(auctionVo);
		}else{
			msg="경매 등록에 실패하였습니다";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
}
