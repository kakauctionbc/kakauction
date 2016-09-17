package com.app.kaka.msg.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.kaka.freeboardreport.model.FreeboardreportVO;
import com.app.kaka.msg.model.MsgService;
import com.app.kaka.report.model.ReportVO;

@Controller
@RequestMapping("/msg")
public class MsgController {
	
	private static final Logger logger = LoggerFactory.getLogger(MsgController.class);
	
	@Autowired
	private MsgService msgService;
	
	/*@RequestMapping("/list")
	public String msgList(){
		
	}*/
	
	@RequestMapping("/write")
	public String msgWrite_get(@ModelAttribute FreeboardreportVO fVo, @ModelAttribute ReportVO rVo, Model model){
		logger.info("메세지 작성 페이지, 파라미터 FreeboardReportVO = {}", fVo);
		logger.info("메세지 작성 페이지, 파라미터 ReportVO = {}", rVo);
		
		return "msg/write";
	}
	
	@RequestMapping("/detail")
	public String msgDetail(){
		return "msg/detail";
	}
}
