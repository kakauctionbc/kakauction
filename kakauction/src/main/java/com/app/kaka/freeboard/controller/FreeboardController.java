package com.app.kaka.freeboard.controller;

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

import com.app.kaka.common.FileUploadWebUtil;
import com.app.kaka.common.PaginationInfo;
import com.app.kaka.common.SearchVO;
import com.app.kaka.common.Utility;
import com.app.kaka.freeboard.model.FreeboardService;
import com.app.kaka.freeboard.model.FreeboardVO;

@Controller
@RequestMapping("/freeboard")
public class FreeboardController {
	private Logger logger = LoggerFactory.getLogger(FreeboardController.class);
	
	@Autowired
	private FileUploadWebUtil fileUtil;
	
	@Autowired
	private FreeboardService freeboardService;
	
	@RequestMapping(value="/write.do", method=RequestMethod.GET)
	public String wirte_get(){
		logger.info("글 쓰기 화면 보여주기");
		return "freeboard/write";
	}
	@RequestMapping(value="/write.do", method=RequestMethod.POST)
	public String wirte_post(HttpServletRequest request, @ModelAttribute FreeboardVO freeboardVo){
		//글쓰기 처리 - post
		//1. 파라미터 읽어오기
		logger.info("글쓰기 처리, 파라미터 freeboardVo={}", freeboardVo);
		
		//2. db작업 - insert
		//[1]파일 업로드 처리하기
		List<Map<String, Object>> fileList = freeboardService.fileupload(request);
		//[2]db에 insert하기
		String fileName="";
		String ofileName="";
		long fileSize=0;
		for(Map<String, Object> myMap : fileList){
			fileName = (String)myMap.get("freeboardFilename");
			ofileName=(String)myMap.get("freeboardOriginalname");
			fileSize = (Long)myMap.get("freeboardFilesize");
			
		}//for
		freeboardVo.setFreeboardFilename(fileName);
		freeboardVo.setFreeboardOriginalname(ofileName);
		freeboardVo.setFreeboardFilesize(fileSize);
		
		logger.info("vo를 알고 싶어요={}",freeboardVo);
		/*
		reBoard.xml => ReBoardDAO => ReBoardDAOMybatis
		=> ReBoardService => ReBoardServiceImpl
		=> ReBoardWriteController  
		*/

		
		int cnt = freeboardService.insertFreeboard(freeboardVo);
		logger.info("글쓰기 결과, cnt={}", cnt);
		
		//3. 결과저장, 뷰페이지 리턴
		return "redirect:/freeboard/list.do";
	}
/*	@RequestMapping("/list.do")
	public String listFreeboard(){
		
	}*/
	@RequestMapping("updateCount.do")
	public String updateCountFreeboard(@RequestParam(defaultValue="0") int freeboardNo, HttpServletRequest request, Model model){
		logger.info("조회수 증가 파라미터, freeboardNo={}", freeboardNo);
		if (freeboardNo==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/freeboard/list.do");
			
			return "common/message";
		}
		
		int cnt = freeboardService.updateReadCount(freeboardNo);
		logger.info("조회수 증가 파라미터, cnt={}", cnt);
		
		FreeboardVO freeVo = freeboardService.detailFreeboard(freeboardNo);
		logger.info("글 상세목록 freeboardVo = {}", freeVo);
		
		String fileInfo="", downInfo="";
		if(freeVo.getFreeboardFilename()!=null 
				&& !freeVo.getFreeboardFilename().isEmpty()){
			String contextPath = request.getContextPath();
			double fileSize 
					= Math.round((freeVo.getFreeboardFilesize()/1000.0)*10)/10.0;
			
			fileInfo="<img src='"+ contextPath 
					+"/images/file.gif' alt='파일이미지'>";
			fileInfo+=freeVo.getFreeboardOriginalname()
					+ " ("+fileSize +"KB)";
			
			downInfo="다운:"+freeVo.getFreeboardDowncount();
		}
		
		model.addAttribute("freeVo", freeVo);
		model.addAttribute("fileInfo", fileInfo);
		model.addAttribute("downInfo", downInfo);
		
		return "/freeboard/detail";
	}
	
/*	@RequestMapping("/detail.do")
	public String detailFreeboard(@RequestParam(defaultValue="0") int freeboardNo, HttpServletRequest request, Model model){
		logger.info("글 상세목록 파라미터 freeboardNo={}",freeboardNo);
		
		if (freeboardNo==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/freeboard/list.do");
			
			return "common/message";
		}
		
		FreeboardVO freeVo = freeboardService.detailFreeboard(freeboardNo);
		logger.info("글 상세목록 freeboardVo = {}", freeVo);
		
		String fileInfo="", downInfo="";
		if(freeVo.getFreeboardFilename()!=null 
				&& !freeVo.getFreeboardFilename().isEmpty()){
			String contextPath = request.getContextPath();
			double fileSize 
					= Math.round((freeVo.getFreeboardFilesize()/1000.0)*10)/10.0;
			
			fileInfo="<img src='"+ contextPath 
					+"/images/file.gif' alt='파일이미지'>";
			fileInfo+=freeVo.getFreeboardOriginalname()
					+ " ("+fileSize +"KB)";
			
			downInfo="다운:"+freeVo.getFreeboardDowncount();
		}
		
		model.addAttribute("freeVo", freeVo);
		model.addAttribute("fileInfo", fileInfo);
		model.addAttribute("downInfo", downInfo);
		
		return "/freeboard/detail";
	}*/
	
	@RequestMapping("/list.do")
	public String freeboardList(@ModelAttribute SearchVO searchVo,
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
		List<FreeboardVO> alist = freeboardService.selectAll(searchVo);
		//logger.info("글목록 조회 결과 alist.size()={}", alist.size());
		
		//전체 레코드 개수 조회하기
		int totalRecord 
			= freeboardService.selectTotalCount(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
		
		//3. 결과 저장, 뷰페이지 리턴
		model.addAttribute("alist", alist);
		model.addAttribute("pagingInfo", pagingInfo);
		
		return "freeboard/list";
	}
	
	@RequestMapping(value="/edit.do", method=RequestMethod.GET)
	public String editFreeboard_get(@RequestParam(defaultValue="0") int freeboardNo, Model model){
		
		logger.info("글수정 화면 보여주기, 파라미터 freeboardNo={}",freeboardNo);
		if(freeboardNo==0){
			model.addAttribute("msg", "잘못된 url입니다");
			model.addAttribute("url", "/freeboard/list.do");
			return "common/message";
		}
		
		//2.
		FreeboardVO freeboardVO =freeboardService.selectByNo(freeboardNo);
		
		//3.
		model.addAttribute("freeboardVO", freeboardVO);
		return "freeboard/edit";
	}
	@RequestMapping(value="/edit.do", method=RequestMethod.POST)
	public String editFreeboard_post(HttpServletRequest request, @ModelAttribute FreeboardVO freeboardVo, Model model){
		
		logger.info("글수정 화면 보여주기, 파라미터 FreeboardVO={}",freeboardVo);

		int uploadType = FileUploadWebUtil.FREEBOARD_UPLOAD;
		//상품등록시 이미지 업로드
		logger.info("글 수정 처리 왜 안되냐, request={},uploadType={}",request,uploadType);
		List<Map<String, Object>> fileList = fileUtil.fileUpload(request, uploadType);
		logger.info("상품 등록 처리 얘는 뭐냐, fileList={}",fileList);
		//업로드된 파일명 구해오기
		String fileName="";
		String ofileName="";
		long fileSize=0;
		for(Map<String, Object> mymap : fileList ){
			fileName =  (String) mymap.get("fileName");
			fileSize =  (Long) mymap.get("fileSize");
			ofileName =  (String) mymap.get("ofileName");
			
			freeboardVo.setFreeboardFilename(fileName);
			freeboardVo.setFreeboardFilesize(fileSize);
			freeboardVo.setFreeboardOriginalname(ofileName);
			logger.info("세터 다 하고 FreeboardVO={}",freeboardVo);
		}
		String msg = "", url ="";
		int cnt = freeboardService.updateFreeboard(freeboardVo);
		logger.info("게시글 등록 결과 cnt={}",cnt);
		if(cnt>0){
			msg="상품 수정 성공";
			url="/freeboard/list.do";
		}else{
			msg="상품 수정 실패";
			url="/freeboard/edit.do";
		}
		
		return "common/message";

	}
}
