package com.app.kaka.alert.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.kaka.alert.model.AlertService;
import com.app.kaka.alert.model.AlertVO;
import com.app.kaka.msg.model.MsgVO;

@RequestMapping("/alert")
public class AlertController {
	private static final Logger logger = LoggerFactory.getLogger(AlertController.class);
	
	@Autowired
	private AlertService alertService;
	
	@RequestMapping("/detail.do")
	public String detail(@RequestParam(defaultValue="0")int alertNo, Model model){
		if (alertNo==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/msg/myList.do");
			
			return "common/message";
		}
		
		logger.info("메세지 세부사항 조회, 파라미터  alertNo = {}", alertNo);
		
		AlertVO alertVo = alertService.selectByAlertNo(alertNo);
		logger.info("쪽지 상세조회 결과, alertVo = {}", alertVo);
		
		model.addAttribute("alertVo", alertVo);
		
		return "alert/detail";
	}
}
