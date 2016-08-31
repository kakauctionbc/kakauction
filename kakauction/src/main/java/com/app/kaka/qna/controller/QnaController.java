package com.app.kaka.qna.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.kaka.common.PaginationInfo;
import com.app.kaka.common.SearchVO;
import com.app.kaka.common.Utility;
import com.app.kaka.notice.model.NoticeVO;
import com.app.kaka.qna.model.QnaService;
import com.app.kaka.qna.model.QnaVO;

@Controller
@RequestMapping("/qna")
public class QnaController {
	
	private static final Logger logger = LoggerFactory.getLogger(QnaController.class);
	
	@Autowired
	private QnaService qnaService;
	
	@RequestMapping("/list.do")
	public String qnaList(@ModelAttribute SearchVO searchVo,
			Model model){
		logger.info("글목록 조회, 파라미터 searchVo={}", searchVo);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.BLOCK_SIZE);
		searchVo.setRecordCountPerPage(Utility.RECORD_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
				
		//2. db작업 - select
		List<QnaVO> alist = qnaService.selectAll(searchVo);
		logger.info("글목록 조회 결과 alist.size()={}", 
				alist.size());
		
		//전체 레코드 개수 조회하기
		int totalRecord 
			= qnaService.selectTotalCount(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
				
		//3. 결과 저장, 뷰페이지 리턴
		model.addAttribute("alist", alist);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "qna/list";
	}
	
	@RequestMapping("/detail.do")
	public String detailQna(@RequestParam(defaultValue="0")int questionNo, HttpServletRequest request, Model model){
		logger.info("질문 상세보기 questionNo={}",questionNo);
		
		if (questionNo==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/list.do");
			
			return "common/message";
		}
		
		QnaVO QnaVo = qnaService.selectByNo(questionNo);
		logger.info("파라미터 QnaVo={}",questionNo);
		
		model.addAttribute("QnaVo", QnaVo);
		
		return "qna/detail";
	}
	
	@RequestMapping(value="write.do", method=RequestMethod.GET)
	public String insertQna_get(){
		logger.info("질문 게시판 글쓰기 보여주기");
		
		return "qna/write";
	}
	
	@RequestMapping(value="/write.do", method=RequestMethod.POST)
	public String insertQna(@ModelAttribute QnaVO qnaVo){
		logger.info("질문 글쓰기 qnaVo={}",qnaVo);
		
		int cnt = qnaService.insertQna(qnaVo);
		
		return "redirect:qna/list.do";
	}
}
