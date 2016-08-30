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

import com.app.kaka.freeboard.model.FreeboardService;
import com.app.kaka.freeboard.model.FreeboardVO;

@Controller
@RequestMapping("/freeboard")
public class FreeboardController {
	
	private Logger logger = LoggerFactory.getLogger(FreeboardController.class);
	
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
	
	@RequestMapping("/detail.do")
	public String detailFreeboard(@RequestParam(defaultValue="0") int freeboardNo, HttpServletRequest request, Model model){
		logger.info("글 상세목록 파라미터 freeboardNo={}",freeboardNo);
		
		if (freeboardNo==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/list.do");
			
			return "common/message";
		}
		
		FreeboardVO freeVo = freeboardService.detailFreeboard(freeboardNo);
		
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
}
