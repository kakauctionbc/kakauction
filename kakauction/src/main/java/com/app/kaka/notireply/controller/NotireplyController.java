package com.app.kaka.notireply.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.kaka.notireply.model.NotireplyService;
import com.app.kaka.notireply.model.NotireplyVO;

@Controller
@RequestMapping("/notireply")
public class NotireplyController {
	
	private static final Logger logger = LoggerFactory.getLogger(NotireplyController.class);
	
	@Autowired
	private NotireplyService notireplyService;
	
	@RequestMapping("/insertComment.do")
	public String insertComment(@ModelAttribute NotireplyVO vo, Model model){

		logger.info("댓글 달기, 파라미터 NotireplyVO={}", vo);
		
		int cnt = notireplyService.insertComment(vo);
		logger.info("댓글달기 결과 cnt = {}", cnt);
		
		String msg = "", url = "/notice/detail.do?no="+vo.getNotireplyGroupno();
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
