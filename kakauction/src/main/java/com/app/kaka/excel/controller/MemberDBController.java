package com.app.kaka.excel.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.kaka.excel.model.WriteListToExcelFile;
import com.app.kaka.member.model.MemberService;
import com.app.kaka.member.model.MemberVO;

@Controller
@RequestMapping("/excel")
public class MemberDBController {
	private static final Logger logger = LoggerFactory.getLogger(MemberDBController.class);
	
	@Autowired
	private MemberService memberService;
	
	/*@RequestMapping(value="/downloadExcel.do",method=RequestMethod.GET)
	public String excelDown(Model model){
		return "adminf/adminf";
	}*/
	
	@RequestMapping(value="/downloadExcel.do",method=RequestMethod.GET)
    public String excelView_get(Model model) throws Exception{
		logger.info("화면을 보여주렴");
		
		return "excel/downloadExcel";
	}
	
 
	@RequestMapping(value="/downloadExcel.do",method=RequestMethod.POST)
    public String excelView_post(Model model) throws Exception{
        
        List<MemberVO> memberList=memberService.selectAllMember();
        logger.info("memberlist들어간건가... memberList.size={}",memberList.size());
        
        if (memberList!=null) {
        	WriteListToExcelFile.writeNoticeListToFile("memberList.xls", memberList);
        	logger.info("modellist 보야워 memberList={}",memberList);
        	model.addAttribute("msg","다운 성공");
        	model.addAttribute("url","/login/login.do");
        }
        
        return "common/message";
    }
	
	@RequestMapping(value="/uploadExcel.do", method=RequestMethod.GET)
	public String uploadFile_get(){
		logger.info("업로드 화면 보여주기");
		
		return "excel/uploadExcel";
	}
}
