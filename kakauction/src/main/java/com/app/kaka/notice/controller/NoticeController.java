package com.app.kaka.notice.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.kaka.notice.model.NoticeVO;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
	
	@RequestMapping(value = "/noticeWrite.do", method = RequestMethod.GET)
	public String noticeWrite_get(){
		logger.info("글쓰기 페이지");
		
		return "notice/write";
	}
	
	@RequestMapping(value = "/noticeWrite.do", method = RequestMethod.POST)
	public String noticeWrite_post(NoticeVO vo){
		logger.info("글 쓰기 처리, vo = {}", vo);
		
		return "notice/list";
	}
}
