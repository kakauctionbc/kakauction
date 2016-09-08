package com.app.kaka.excel.controller;

import java.util.List;

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
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/excelDownload.do",method=RequestMethod.GET)
	public String excelDown(Model model){
		return "adminf/adminf";
	}
 
	@RequestMapping(value="/downloadExcel.do",method=RequestMethod.GET)
    public void excelView_post(Model model) throws Exception{
        
        List<MemberVO> memberList=memberService.selectAllMember();
        
        WriteListToExcelFile.writeNoticeListToFile("memberList.xls", memberList);
    }
}
