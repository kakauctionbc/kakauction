package com.app.kaka.notice.controller;

import java.util.List;
import java.util.Map;

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
import com.app.kaka.notice.model.NoticeService;
import com.app.kaka.notice.model.NoticeVO;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping(value = "/write.do", method = RequestMethod.GET)
	public String noticeWrite_get(){
		logger.info("글쓰기 페이지");
		
		return "notice/write";
	}
	
	@RequestMapping(value = "/write.do", method = RequestMethod.POST)
	public String noticeWrite_post(HttpServletRequest request, 
				@ModelAttribute NoticeVO vo){
		//글쓰기 처리 - post
		//1. 파라미터 읽어오기
		logger.info("글쓰기 처리, 파라미터 noticeVo={}", vo);
		
		//2. db작업 - insert
		//[1] 파일업로드 처리하기
		List<Map<String, Object>> fileList = noticeService.fileupload(request);
		
		String fileName = "";		
		String ofileName = "";
		long fileSize = 0;
		for(Map<String, Object> myMap : fileList){
			fileName = (String) myMap.get("noticeFilename");
			ofileName = (String) myMap.get("noticeOriginalname");
			fileSize = (Long) myMap.get("noticeFilesize");
		}//for
		
		vo.setNoticeFilename(fileName);
		vo.setNoticeOriginalname(ofileName);
		vo.setNoticeFilesize(fileSize);
		
		//[2] db에 insert하기
		/*
		reBoard.xml => ReBoardDAO => ReBoardDAOMybatis
		=> ReBoardService => ReBoardServiceImpl
		=> ReBoardWriteController  
		*/
		logger.info("글쓰기 처리, 파라미터 noticeVo={}", vo);
		int cnt = noticeService.insertNotice(vo);
		logger.info("글쓰기 결과, cnt={}", cnt);
		
		//3. 결과저장, 뷰페이지 리턴
		return "redirect:/notice/list.do";
	}
	
	@RequestMapping("/list.do")
	public String listNotice(@ModelAttribute SearchVO searchVo,
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
		List<NoticeVO> alist = noticeService.selectAll(searchVo);
		logger.info("글목록 조회 결과 alist.size()={}", 
				alist.size());
		
		//전체 레코드 개수 조회하기
		int totalRecord 
			= noticeService.selectTotalCount(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
				
		//3. 결과 저장, 뷰페이지 리턴
		model.addAttribute("alist", alist);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "notice/list";
	}
	
	@RequestMapping(value="/edit.do", method=RequestMethod.GET)
	public String noticeEdit_get(@RequestParam(defaultValue="0") int noticeNo, Model model){
		logger.info("글 수정 화면 보여주기, 파라미터 noticeNo={}",noticeNo);
		if(noticeNo<1){
			model.addAttribute("msg", "잘못된 url 입니다");
			model.addAttribute("url", "/notice/list.do");
			return "common/message";
		}
		NoticeVO noticeVo = noticeService.selectByNo(noticeNo);
		
		model.addAttribute("noticeVo", noticeVo);
		return "notice/edit";
	}
	
	@RequestMapping(value="/edit.do", method=RequestMethod.POST)
	public String noticeEdit_post(HttpServletRequest request, @ModelAttribute NoticeVO noticeVo, Model model){
		logger.info("글 수정 화면 처리, noticeVo={}",noticeVo);
		
		List<Map<String, Object>> fileList = noticeService.fileupload(request);
		
		String fileName = "";		
		String ofileName = "";
		long fileSize = 0;
		for(Map<String, Object> myMap : fileList){
			fileName = (String) myMap.get("noticeFilename");
			ofileName = (String) myMap.get("noticeOriginalname");
			fileSize = (Long) myMap.get("noticeFilesize");
		}//for
		
		noticeVo.setNoticeFilename(fileName);
		noticeVo.setNoticeOriginalname(ofileName);
		noticeVo.setNoticeFilesize(fileSize);
		
		logger.info("글 수정 처리, 파라미터 noticeVo={}", noticeVo);
		int cnt = noticeService.editNotice(noticeVo);
		logger.info("글쓰기 결과, cnt={}", cnt);
		String msg="", url="";
		if(cnt>0){
			msg="수정처리 되었습니다";
			url="/notice/list.do";
		}else{
			msg="수정처리 실패";
			url="/notice/edit.do?noticeNo="+noticeVo.getNoticeNo();
		}
		//3. 결과저장, 뷰페이지 리턴
		return "common/message";
	}
	
	@RequestMapping("/detail.do")
	public String detailNotice(@RequestParam(defaultValue="0") int noticeNo, HttpServletRequest request, Model model){
		logger.info("공지글 보기 파라미터 noticeNo={}",noticeNo);
		
		if (noticeNo==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/list.do");
			
			return "common/message";
		}
		
		NoticeVO noticeVo = noticeService.selectByNo(noticeNo);
		logger.info("파라미터 noticeVo={}",noticeVo);
		
		String fileInfo="", downInfo="";
		if(noticeVo.getNoticeFilename()!=null 
				&& !noticeVo.getNoticeFilename().isEmpty()){
			String contextPath = request.getContextPath();
			double fileSize 
					= Math.round((noticeVo.getNoticeFilesize()/1000.0)*10)/10.0;
			
			fileInfo="<img src='"+ contextPath 
					+"/images/file.gif' alt='파일이미지'>";
			fileInfo+=noticeVo.getNoticeOriginalname()
					+ " ("+fileSize +"KB)";
			
			downInfo="다운:"+noticeVo.getNoticeDowncount();
		}
		
		model.addAttribute("noticeVo", noticeVo);
		model.addAttribute("fileInfo", fileInfo);
		model.addAttribute("downInfo", downInfo);
		
		return "notice/detail";
	}
}
