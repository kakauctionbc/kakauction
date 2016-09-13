package com.app.kaka.freeboardreport.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import com.app.kaka.freeboard.model.FreeboardService;
import com.app.kaka.freeboard.model.FreeboardVO;
import com.app.kaka.freeboardreport.model.FreeboardreportService;
import com.app.kaka.freeboardreport.model.FreeboardreportVO;
import com.app.kaka.member.model.MemberVO;

@Controller
@RequestMapping("/freeboard")
public class FreeboardreportController {
	private static final Logger logger = LoggerFactory.getLogger(FreeboardreportController.class);
	
	@Autowired
	private FreeboardService freeboardService;
	
	@Autowired
	private FreeboardreportService reportService;
	
	@RequestMapping(value="/freeboardReport.do",method=RequestMethod.GET)
	public String freeboardReport_get(@RequestParam(defaultValue="0") int freeboardNo, Model model){
		//http://localhost:5841/kaka/freeboard/freeboardReport.do?freeboardNo=1
		logger.info("글신고 파라미터 freeboardNo={}",freeboardNo);
		
		FreeboardVO freeVo = freeboardService.selectByNo(freeboardNo);
		logger.info("이게.. 없어..? freeVo={}",freeVo);
		model.addAttribute("freeVo", freeVo);
		
		return "freeboard/freeboardReport";
	}
	
	@RequestMapping(value="/freeboardReport.do",method=RequestMethod.POST)
	@ResponseStatus(value=HttpStatus.OK)
	public String freeboardReport_post(HttpSession session,@ModelAttribute FreeboardreportVO reportVo, Model model){
		String memberId = (String)session.getAttribute("memberId");
		logger.info("신고자 아이디 memberId={}",memberId);
		logger.info("글 신고 파람 reportVo={}",reportVo);
		
		reportVo.setMemberId(memberId);
		
		if (reportVo.getFreereportType()=="음란물") {
			reportVo.setFreereportContent("부적절한 홍보 게시글");
		}
		
		if (reportVo.getFreereportType()=="광고글") {
			reportVo.setFreereportContent("음란성 또는 청소년에게 부적합한 내용");
		}
		
		int cnt = reportService.insertReport(reportVo);
		
		String msg="", url="";
		if (cnt>0) {
			msg = "글이 신고되었습니다.";
			url = "/freeboard/selfClose.do";
		} else {
			msg = "신고 실패!";
			url = "/freeboard/freeboardReport.do?freeboardNo="+reportVo.getFreeboardNo();
			
		}
		
		return "common/message";
	}
}	
