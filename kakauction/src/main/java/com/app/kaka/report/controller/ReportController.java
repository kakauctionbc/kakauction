package com.app.kaka.report.controller;

import java.util.List;

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

import com.app.kaka.auction.model.AuctionVO;
import com.app.kaka.common.PaginationInfo;
import com.app.kaka.common.SearchVO;
import com.app.kaka.common.Utility;
import com.app.kaka.member.model.MemberVO;
import com.app.kaka.msg.model.MsgService;
import com.app.kaka.msg.model.MsgVO;
import com.app.kaka.notice.model.NoticeVO;
import com.app.kaka.report.model.ReportService;
import com.app.kaka.report.model.ReportVO;

@Controller
@RequestMapping("/report")
public class ReportController {
	private Logger logger = LoggerFactory.getLogger(ReportController.class);
	
	@Autowired
	private ReportService reportService;
	
	@Autowired
	private MsgService msgService;
	
	@RequestMapping(value="/auctionReport.do", method=RequestMethod.GET)
	public String regReport_get(@RequestParam String memberId, @RequestParam int auctionNo, Model model){
		logger.info("auctionNo={}",auctionNo);

		ReportVO reportVo = new ReportVO();
		reportVo.setOriginNo(auctionNo);
		reportVo.setReportMemberId(memberId);
		
		AuctionVO auctionVo = reportService.selectAuctionInfo(auctionNo);
		
		int cnt = reportService.selectReportHis(reportVo);
		logger.info("cnt={}",cnt);

		if(cnt>0){
			model.addAttribute("msg", "이미 신고하신 차량입니다.");
			model.addAttribute("url", "/report/selfClose.do");
			model.addAttribute("also",cnt);
			return "common/message";
		}
		
		cnt = reportService.selectReportMy(reportVo);
		logger.info("cnt={}",cnt);
		if(cnt>0){
			model.addAttribute("msg","자신이 등록한 경매입니다.");
			model.addAttribute("url","/report/selfClose.do");
			model.addAttribute("self",cnt);
			return "common/message";
		}
		
		logger.info("auctionVo={}",auctionVo);
		model.addAttribute("memberId", memberId);
		model.addAttribute("auctionVo", auctionVo);
		model.addAttribute("url", "report");
		model.addAttribute("cnt", cnt);
		
		return "report/regReport";
	}

	@RequestMapping("/insertAuctionReport.do")
	public String regReport_post(@ModelAttribute ReportVO reportVo, Model model){
		logger.info("신고를 하자 reportVO={}",reportVo);
		
		String msg = "", url="";
		int cnt=reportService.insertAuctionReport(reportVo);
		if(cnt<1){
			msg="신고에 실패하였습니다";
			url="/report/auctionReport.do?memberId="+reportVo.getReportMemberId()+"&auctionNo="+reportVo.getOriginNo();
		}else{
			msg="신고 접수하셨습니다";
			url="/report/selfClose.do";
			
			int ucnt = reportService.updateReportCount(reportVo.getOriginNo());
			logger.info("신고수 업데이트 된거니? ucnt={}",cnt);
			
		}
		logger.info("신고를 하자 cnt={}",cnt);
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		model.addAttribute("cnt", cnt);
		
		return "common/message";
	}
	
	@RequestMapping("/selfClose.do")
	public String selfClose(){
		return "report/selfClose";
	}
	
	@RequestMapping("/reportAdminList.do")
	public String adminListAuction(@ModelAttribute SearchVO searchVo, Model model){
		logger.info("내 신고 목록");
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
		List<ReportVO> alist = reportService.selectAll(searchVo);
		logger.info("글목록 조회 결과 alist.size()={}", alist.size());
		
		//전체 레코드 개수 조회하기
		int totalRecord = reportService.selectTotalCount(searchVo);
		logger.info("토탈레코드가 궁금 totalRecord={}",totalRecord);
		pagingInfo.setTotalRecord(totalRecord);
				
		//3. 결과 저장, 뷰페이지 리턴
		model.addAttribute("alist", alist);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "report/list";
	}
	
	@RequestMapping("/reportAllList.do")
	public String reportAllList(@ModelAttribute SearchVO searchVo,
			@RequestParam(defaultValue="20") int selectedCountPerPage,
			Model model){
		logger.info("신고 목록 보여주기, 파라미터 searchVo = {}, selectedCountPerPage = {}", searchVo, selectedCountPerPage);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(selectedCountPerPage);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.BLOCK_SIZE);
		searchVo.setRecordCountPerPage(selectedCountPerPage);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
				
		//2. db작업 - select
		List<ReportVO> alist = reportService.selectAll(searchVo);
		logger.info("글목록 조회 결과 alist.size()={}", 
				alist.size());
		
		//전체 레코드 개수 조회하기
		int totalRecord 
			= reportService.selectTotalCount(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
				
		//3. 결과 저장, 뷰페이지 리턴
		model.addAttribute("alist", alist);
		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("selectedCountPerPage", selectedCountPerPage);
		
		return "admin/reportList";
	}
	
	@RequestMapping("/reportList.do")
	public String listAuction(HttpSession session,@RequestParam String orderKey,@ModelAttribute SearchVO searchVo, Model model){
		logger.info("내 신고 목록");
		/*3. 글목록 조회
		/reBoard/list.do => ReBoardListController
		=> /reBoard/list.jsp*/
		//1. 파라미터 읽어오기
		logger.info("글목록 조회, 파라미터 searchVo={}", searchVo);
		
		String buyerMemberId = (String)session.getAttribute("memberId");

		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.BLOCK_SIZE);
		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		
		searchVo.setSearchKeyword(buyerMemberId);
		//orderKey는 desc인지 asc인지 
		searchVo.setSearchCondition(orderKey);
		
		//2. db작업 - select
		List<ReportVO> alist = reportService.selectMemberIdAll(searchVo);
		logger.info("글목록 조회 결과 alist.size()={}", alist.size());
		
		//전체 레코드 개수 조회하기
		int totalRecord = reportService.selectTotalCount(searchVo);
		logger.info("토탈레코드가 궁금 totalRecord={}",totalRecord);
		pagingInfo.setTotalRecord(totalRecord);
		
		//3. 결과 저장, 뷰페이지 리턴
		model.addAttribute("alist", alist);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "report/list";
	}
	
	@RequestMapping("/detail.do")
	public String reportDetail(@RequestParam(defaultValue="0")int reportNo, Model model){
		logger.info("신고 상세보기, 파라미터 reportNo = {}", reportNo);
		
		if (reportNo==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/report/reportAllList.do");
			
			return "common/message";
		}
		
		ReportVO reportVo = reportService.selectByNo(reportNo);
		logger.info("글 상세 조회 결과, reportVo = {}", reportVo);
		
		String reportedMemberId = reportService.searchMemberId(reportVo);
		logger.info("피신고자 아이디, reportedMemberId = {}", reportedMemberId);
		
		model.addAttribute("reportVo", reportVo);
		model.addAttribute("reportedMemberId", reportedMemberId);
		
		return "admin/reportDetail";
	}
	
	@RequestMapping("handle.do")
	public String reportHandle(@ModelAttribute MemberVO memVo,
			@ModelAttribute ReportVO reportVo, @ModelAttribute MsgVO msgVo, Model model){
		logger.info("신고 처리 실행, 파라미터 memberId = {}, memberGrade = {} ", memVo.getMemberId(), memVo.getMemberGrade());
		int cnt = reportService.reportHandle(memVo.getMemberId(), memVo.getMemberGrade(), reportVo.getReportNo());
		logger.info("신고 처리 결과, cnt = {}", cnt);
		
		int cnt1 = msgService.sendMessage(memVo, reportVo, msgVo);
		
		String msg = "", url = "";
		if(cnt>0){
			msg = memVo.getMemberGrade() + " 처리 하였습니다";
			url = "/report/detail.do?reportNo="+reportVo.getReportNo();
		}else{
			msg = memVo.getMemberGrade() + " 처리 실패";
			url = "/report/detail.do?reportNo="+reportVo.getReportNo();
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
}
