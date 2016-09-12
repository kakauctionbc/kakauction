package com.app.kaka.notice.controller;

import java.io.File;
import java.util.HashMap;
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
import org.springframework.web.servlet.ModelAndView;

import com.app.kaka.common.FileUploadWebUtil;
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
	
	@Autowired
	private FileUploadWebUtil webUtil;
	
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
		List<Map<String, Object>> fileList = webUtil.fileUpload(request, webUtil.NOTICE_UPLOAD);
		
		String fileName = "";		
		String ofileName = "";
		long fileSize = 0;
		for(Map<String, Object> myMap : fileList){
			fileName = (String) myMap.get("fileName");
			ofileName = (String) myMap.get("ofileName");
			fileSize = (Long) myMap.get("fileSize");
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
	public String listNotice(@ModelAttribute SearchVO searchVo, @RequestParam(defaultValue="20") int selectedCountPerPage,
			Model model){
		logger.info("글목록 조회, 파라미터 searchVo={}, selectedCountPerPage = {}", searchVo, selectedCountPerPage);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(selectedCountPerPage);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.BLOCK_SIZE);
		searchVo.setRecordCountPerPage(selectedCountPerPage);
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
		model.addAttribute("selectedCountPerPage", selectedCountPerPage);
		
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
	public String noticeEdit_post(HttpServletRequest request, @ModelAttribute NoticeVO noticeVo,
			@RequestParam String oldFileName, Model model){
		logger.info("글 수정 화면 처리, noticeVo={}",noticeVo);
		
		List<Map<String, Object>> fileList = webUtil.fileUpload(request, webUtil.NOTICE_UPLOAD);
		
		String fileName = "";		
		String ofileName = "";
		long fileSize = 0;
		for(Map<String, Object> myMap : fileList){
			fileName = (String) myMap.get("fileName");
			ofileName = (String) myMap.get("ofileName");
			fileSize = (Long) myMap.get("fileSize");
		}//for
		
		//파일이 첨부된 경우에는 파일도 삭제처리한다
		if(oldFileName!=null && !oldFileName.isEmpty()){
			String upPath=webUtil.getUploadPath(request, webUtil.NOTICE_UPLOAD);
			File delFile = new File(upPath ,oldFileName);
			if(delFile.exists()){
				boolean bool=delFile.delete();
				logger.info("파일 삭제 여부:{}", bool);					
			}
		}//if
				
		noticeVo.setNoticeFilename(fileName);
		noticeVo.setNoticeOriginalname(ofileName);
		noticeVo.setNoticeFilesize(fileSize);
		
		logger.info("글 수정 처리, 파라미터 noticeVo={}", noticeVo);
		int cnt = noticeService.editNotice(noticeVo);
		logger.info("글쓰기 결과, cnt={}", cnt);
		String msg="", url="";
		if(cnt>0){
			msg="수정처리 되었습니다";
			url="/notice/detail.do?noticeNo="+noticeVo.getNoticeNo();
		}else{
			msg="수정처리 실패";
			url="/notice/edit.do?noticeNo="+noticeVo.getNoticeNo();
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		//3. 결과저장, 뷰페이지 리턴
		return "common/message";
	}
	
	@RequestMapping("/detail.do")
	public String detailNotice(@RequestParam(defaultValue="0") int noticeNo, HttpServletRequest request, Model model){
		logger.info("공지글 보기 파라미터 noticeNo={}",noticeNo);
		
		if (noticeNo==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/notice/list.do");
			
			return "common/message";
		}
		
		NoticeVO noticeVo = noticeService.selectByNo(noticeNo);
		logger.info("파라미터 noticeVo={}",noticeVo);
		
		String fileInfo="", downInfo="";
		if(noticeVo.getNoticeFilename()!=null && !noticeVo.getNoticeFilename().isEmpty()){
			String contextPath = request.getContextPath();
			double fileSize 
					= Math.round((noticeVo.getNoticeFilesize()/1000.0)*10)/10.0;
			
			fileInfo="<img src='"+ contextPath 
					+"/image/file.gif' alt='파일이미지'>";
			fileInfo+=noticeVo.getNoticeOriginalname()
					+ " ("+fileSize +"KB)";
			
			downInfo="다운:"+noticeVo.getNoticeDowncount();
		}
		
		model.addAttribute("noticeVo", noticeVo);
		model.addAttribute("fileInfo", fileInfo);
		model.addAttribute("downInfo", downInfo);
		
		return "notice/detail";
	}
	
	@RequestMapping("/updateCount.do")
	public String updateReadCount(@RequestParam(defaultValue="0")int noticeNo,Model model){
		logger.info("이건 읽기 조회수 !!");
		
		if (noticeNo==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/notice/list.do");
			
			return "common/message";
		}
		
		int cnt = noticeService.updateReadCount(noticeNo);
		logger.info("조회수 증가 결과, cnt={}",cnt);
		
		return "redirect:/notice/detail.do?noticeNo="+noticeNo;
	}
	
	@RequestMapping("/delete.do")
	public String deleteNotice(HttpServletRequest request,@ModelAttribute NoticeVO noticeVo,
			@RequestParam String noticeFilename,Model model){
		logger.info("공지 삭제 파라미터 noticeNo={},noticeFilename={}",noticeVo.getNoticeNo(), noticeFilename);
		
		if (noticeVo.getNoticeNo()==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/notice/list.do");
			
			return "common/message";
		}
		
		//저장 프로시저에서 사용할 map 만들기
		Map<String, String> map 
			= new HashMap<String, String>();
		map.put("noticeNo", noticeVo.getNoticeNo()+"");
		map.put("noticeGroupno", noticeVo.getNoticeGroupno()+"");
		map.put("noticeStep", noticeVo.getNoticeStep()+"");
		logger.info("글삭제시 파라미터 map={}", map);
		
		int cnt = noticeService.deleteNotice(map);
		
		//파일이 첨부된 경우에는 파일도 삭제처리한다
		if(noticeFilename!=null && !noticeFilename.isEmpty() && cnt>0){
			String upPath=webUtil.getUploadPath(request, webUtil.NOTICE_UPLOAD);
			File delFile = new File(upPath ,noticeFilename);
			if(delFile.exists()){
				boolean bool=delFile.delete();
				logger.info("파일 삭제 여부:{}", bool);					
			}
		}//if
		
		logger.info("공지 삭제 결과, cnt={}",cnt);
		
		return "redirect:/notice/list.do";
	}
	
	
	@RequestMapping("/download.do")
	public ModelAndView download(@RequestParam(defaultValue="0") int noticeNo,@RequestParam String noticeFilename,
			HttpServletRequest request,Model model){
		//http://localhost:5841/kaka/notice/download.do?noticeNo=2&fileName=BoardService20160831090649002.java
		logger.info("다운로드 파라미터, noticeNo={},fileName={}",noticeNo, noticeFilename);
		
		int cnt = noticeService.updateDownCount(noticeNo);
		logger.info("다운로드 수 증가 noticeNo={}",noticeNo);
		
		//3.
		//다운로드할 파일정보를 이용해서 파일 객체를 
		//만든 후 뷰에 넘긴다
		
		//ModelAndView(String viewName, Map map)		
		Map<String, Object> map 
			= new HashMap<String, Object>();
		String upPath = webUtil.getUploadPath(request,webUtil.NOTICE_UPLOAD);
		
		File file = new File(upPath, noticeFilename);
		//생성한 파일 객체를 map에 저장한 후 뷰에 넘긴다
		map.put("myfile", file);
		
		ModelAndView mav 
		= new ModelAndView("downloadView", map);
		
		return mav;
	}
}
