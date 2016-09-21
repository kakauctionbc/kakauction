package com.app.kaka.msg.controller;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.app.kaka.alert.model.AlertService;
import com.app.kaka.common.MsgSearchVO;
import com.app.kaka.common.PaginationInfo;
import com.app.kaka.common.SearchVO;
import com.app.kaka.common.Utility;
import com.app.kaka.freeboard.model.FreeboardVO;
import com.app.kaka.freeboardreport.model.FreeboardreportVO;
import com.app.kaka.msg.model.MsgService;
import com.app.kaka.msg.model.MsgVO;
import com.app.kaka.report.model.ReportVO;

@Controller
@RequestMapping("/msg")
public class MsgController {
	
	private static final Logger logger = LoggerFactory.getLogger(MsgController.class);
	
	@Autowired
	private MsgService msgService;
	
	@Autowired
	private AlertService alertService;
	
	/*@RequestMapping("/list")
	public String msgList(){
		
	}*/
	
	@RequestMapping("/myList.do")
	public String msgWrite_get(HttpSession session, @ModelAttribute MsgSearchVO searchVo,
			@RequestParam(defaultValue="20") int selectedCountPerPage,Model model){
		String memberId = (String) session.getAttribute("memberId");
		searchVo.setMemberId(memberId);
		logger.info("글목록 조회, 파라미터 searchVo={}", searchVo);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(selectedCountPerPage);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.BLOCK_SIZE);
		searchVo.setRecordCountPerPage(selectedCountPerPage);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		
		//2. db작업 - select
		List<Map<String, Object>> alist = msgService.selectByMemberId(searchVo);
		logger.info("글목록 조회 결과 alist.size()={}", alist.size());
		
		//전체 레코드 개수 조회하기
		int totalRecord 
			= msgService.selectTotalCount(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
		
		//3. 결과 저장, 뷰페이지 리턴
		model.addAttribute("alist", alist);
		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("selectedCountPerPage", selectedCountPerPage);
		
		return "msg/myList";
	}
	
	@RequestMapping("/detail.do")
	public String msgDetail(@RequestParam(defaultValue="0")int msgNo, Model model){
		if (msgNo==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/msg/myList.do");
			
			return "common/message";
		}
		
		logger.info("메세지 세부사항 조회, 파라미터  memberId = {}", msgNo);
		
		MsgVO msgVo = msgService.selectByMsgNo(msgNo);
		logger.info("쪽지 상세조회 결과, msgVo = {}", msgVo);
		
		model.addAttribute("msgVo", msgVo);
		
		return "msg/detail";
	}
	
	@RequestMapping("/myMsgAlarm.do")
	public String msgAlarm(HttpSession session, Model model){
		String memberId = (String) session.getAttribute("memberId");
		logger.info("새로운 알람 보여주기, 파라미터 memberId = {}", memberId);
		
		int newMsgCount = msgService.newMessage(memberId);
		int newAlartCount = alertService.newAlert(memberId);
		
		model.addAttribute("newMsgCount", newMsgCount+newAlartCount);
		
		return "msg/alarm";
	}
	
	@RequestMapping("/myMsgAla.do")
	@ResponseBody
	public int msgAla(HttpSession session, Model model){
		String memberId = (String) session.getAttribute("memberId");
		
		int newMsgCount = msgService.newMessage(memberId);
		int newAlartCount = alertService.newAlert(memberId);
		
		return newMsgCount+newAlartCount;
	}
}
