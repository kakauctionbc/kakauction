package com.app.kaka.freereply.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.kaka.freereply.model.FreeReplyService;
import com.app.kaka.freereply.model.FreeReplyVO;

@Controller
@RequestMapping("/freeboardreply")
public class FreeReplyController {
	
	private static final Logger logger = LoggerFactory.getLogger(FreeReplyController.class);
	
	@Autowired
	private FreeReplyService freereplyService;
	
	@RequestMapping("/insertComment.do")
	public String insertComment(@ModelAttribute FreeReplyVO vo, Model model){

		logger.info("댓글 달기, 파라미터 CommentVo={}", vo);
		
		int cnt = freereplyService.insertComment(vo);
		logger.info("댓글달기 결과 cnt = {}", cnt);
		
		String msg = "", url = "/board/detail.do?no="+vo.getFreereplyGroupno();
		if(cnt>0){
			msg = "댓글을 달았습니다!";
		}else{
			msg = "댓글달기 실패";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
}
