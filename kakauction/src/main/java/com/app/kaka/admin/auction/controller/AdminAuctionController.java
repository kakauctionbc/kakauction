package com.app.kaka.admin.auction.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.app.kaka.common.DateSearchVO;
import com.app.kaka.common.PaginationInfo;
import com.app.kaka.common.SearchVO;
import com.app.kaka.common.Utility;
import com.app.kaka.op.model.OpService;
import com.app.kaka.op.model.OpVO;
import com.app.kaka.record.model.RecordVO;

@Controller
@RequestMapping("/admin/auction")
public class AdminAuctionController {
	private Logger logger = LoggerFactory.getLogger(AdminAuctionController.class);
	
	@Autowired
	private AuctionService auctionService;
	
	@Autowired
	private OpService opService;
	
	@RequestMapping(value="/auctionWrite.do", method=RequestMethod.GET)
	public String write_get(Model model){
		logger.info("경매 등록 화면 보여주기");
		List<CarVO> alist = auctionService.carlist();
		model.addAttribute("carAlist", alist);
		return "admin/auction/auctionWrite";
	}
	
	@RequestMapping("/selectCar.do")
	@ResponseBody
	public AuctionCarVO selectCar(@RequestParam String carNum){
		logger.info("carNum 넘어왔닝 carNum={}",carNum);
		AuctionCarVO vo = auctionService.auctionCar(carNum);
		logger.info("carNum 넘어왔닝 vo={}",vo);
		
		return vo;
	}
	
	@RequestMapping(value="/auctionWrite.do", method=RequestMethod.POST)
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
			url="/admin/write.do";
			
		}
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		return "common/message";
	}
	
	@RequestMapping("/auctionList.do")
	public String listAuction(@ModelAttribute SearchVO searchVo, Model model){
		logger.info("경매 목록");
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
		
		return "admin/auction/auctionList";
	}
	@RequestMapping("/auctionDetail.do")
	public String auctionDetail(@RequestParam int auctionNo, Model model){
		if(auctionNo==0){
	    	model.addAttribute("msg", "잘못된 url입니다");
	    	model.addAttribute("url", "/admin/auction/auctionList.do");
	    	
	    	return "common/message";
	    }
		AuctionVO auctionVo = auctionService.selectAucByAuctionNo(auctionNo);
	    model.addAttribute("auctionVo", auctionVo);
	    logger.info("auctionDetail에서 보여줄 auctionVo={}", auctionVo);
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
		RecordVO firstMem = auctionService.selectRecordByRecordNo(auctionNo);
		List<RecordVO> alist = auctionService.selectRecordByAuctionNo(auctionNo);
		model.addAttribute("firstMem", firstMem);
		model.addAttribute("alist", alist);
		
		return "admin/auction/adminAuctionDetail";
	}
	
	@RequestMapping("/auctionStop.do")
	public String auctionStop(@RequestParam(defaultValue="0") int auctionNo, Model model){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("auctionState", "END");
		map.put("auctionNo", "auctionNo");
		int cnt =auctionService.adminUpdateStateStop(map);
		if(cnt>0){
			model.addAttribute("msg", "경매를 종료하였습니다");
			model.addAttribute("url", "admin/auctionList.do");
		}else{
			model.addAttribute("msg", "경매 종료 실패하였습니다");
			model.addAttribute("url", "admin/auctionDetail.do?auctionNo="+auctionNo);
		}
		return "common/message";
	}
	
	@RequestMapping("/auctionSuccess.do")
	public String auctionSuccess(@ModelAttribute DateSearchVO vo, Model model){
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
		
		return "/admin/auction/auctionSuccess";
	}
	
	@RequestMapping("/auctionDeny.do")
	public String auctionDeny(@RequestParam String carNum, Model model){
		logger.info("경매 거부 화면 carNum={}", carNum);
		if(carNum==null || carNum.isEmpty()){
			model.addAttribute("msg", "잘못된 url입니다");
	    	model.addAttribute("url", "/admin/auction/auctionList.do");
	    	
	    	return "common/message";
		}
		int cnt = auctionService.carUpadeAuctionDeny(carNum);
		String msg="", url="/admin/auction/auctionWrite.do";
		if(cnt>0){
			msg="경매 등록 거부하였습니다";
		}else{
			msg="경매 등록 거부 실패하였습니다";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		logger.info("경매 목록");
		return "common/message";
	}
	
	@RequestMapping("/auctionDenyList.do")
	public String auctionDenylist(@ModelAttribute SearchVO searchVo, Model model){
		logger.info("경매 목록");
		logger.info("글목록 조회, 파라미터 searchVo={}", searchVo);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.BLOCK_SIZE);
		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("글목록 조회, 파라미터 searchVo={}", searchVo);
		//2. db작업 - select
		List<CarVO> alist = auctionService.selectDenyCar(searchVo);
		logger.info("글목록 조회 결과 alist.size()={}", alist.size());
		
		//전체 레코드 개수 조회하기
		logger.info("토탈레코드가 궁금 alist.size()={}",alist.size());
		pagingInfo.setTotalRecord(alist.size());
				
		//3. 결과 저장, 뷰페이지 리턴
		model.addAttribute("alist", alist);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "admin/auction/auctionDenyList";
	}
}
