package com.app.kaka.qna.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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
	public String qnaList(@ModelAttribute SearchVO searchVo, @RequestParam(defaultValue="20")int selectedCountPerPage,
			Model model){
		logger.info("글목록 조회, 파라미터 searchVo={}", searchVo);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(selectedCountPerPage);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.BLOCK_SIZE);
		searchVo.setRecordCountPerPage(selectedCountPerPage);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
				
		//2. db작업 - select
		List<Map<String, Object>> alist = qnaService.selectAll(searchVo);
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
			model.addAttribute("url", "/qna/list.do");
			
			return "common/message";
		}
		
		QnaVO QnaVo = qnaService.selectByNo(questionNo);
		logger.info("파라미터 QnaVo={}",questionNo);
		
		model.addAttribute("QnaVo", QnaVo);
		
		return "qna/detail";
	}
	
	@RequestMapping(value="write.do", method=RequestMethod.GET)
	public String insertQna_get(HttpSession session, Model model){
		logger.info("질문 게시판 글쓰기 보여주기");
		String memberId = (String)session.getAttribute("memberId");
		logger.info("질문 게시판 memberId={}", memberId);
		if(memberId==null || memberId.isEmpty()){
			model.addAttribute("msg", "비정상적인 접근입니다.");
			model.addAttribute("url", "/login/login.do");
			
			return "common/message";
		}
		model.addAttribute("memberId", memberId);
		return "qna/write";
	}
	@RequestMapping(value="/write.do", method=RequestMethod.POST)
	public String insertQna(@ModelAttribute QnaVO qnaVo, Model model){
		logger.info("질문 글쓰기 qnaVo={}",qnaVo);
		
		int cnt = qnaService.insertQna(qnaVo);

		String msg = "", url ="";
		if(cnt>0){
			msg="글이 등록되었습니다";
			url="/qna/list.do";
		}else{
			msg="글 쓰기 실패";
			url="/qna/write.do";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@RequestMapping(value="/edit.do", method=RequestMethod.GET)
	public String noticeEdit_get(@RequestParam(defaultValue="0") int questionNo, Model model){
		logger.info("글 수정 화면 보여주기, 파라미터 questionNo={}",questionNo);
		if(questionNo==0){
			model.addAttribute("msg", "잘못된 url 입니다");
			model.addAttribute("url", "/qna/list.do");
			return "common/message";
		}
		QnaVO qnaVo = qnaService.selectByNo(questionNo);
		
		model.addAttribute("qnaVo", qnaVo);
		return "qna/edit";
	}
	
	@RequestMapping(value="/edit.do", method=RequestMethod.POST)
	public String noticeEdit_post(@ModelAttribute QnaVO qnaVo, Model model){
		logger.info("글 수정 화면 처리, qnaVo={}",qnaVo);
		
		int cnt = qnaService.editQna(qnaVo);
		
		logger.info("글쓰기 결과, cnt={}", cnt);
		String msg="", url="";
		if(cnt>0){
			msg="수정처리 되었습니다";
			url="/qna/detail.do?questionNo="+qnaVo.getQuestionNo();
		}else{
			msg="수정처리 실패";
			url="/qna/edit.do?questionNo="+qnaVo.getQuestionNo();
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		//3. 결과저장, 뷰페이지 리턴
		return "common/message";
	}
	
	@RequestMapping("/delete.do")
	public String deleteNotice(HttpServletRequest request,@ModelAttribute QnaVO qnaVo,
			Model model){
		logger.info("공지 삭제 파라미터 qnaNo={}",qnaVo.getQuestionNo());
		
		if (qnaVo.getQuestionNo()==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/qna/list.do");
			
			return "common/message";
		}
		
		int cnt = qnaService.deleteQna(qnaVo.getQuestionNo());
		
		
		logger.info("질문 삭제 결과, cnt={}",cnt);
		
		return "redirect:/qna/list.do";
	}
}
