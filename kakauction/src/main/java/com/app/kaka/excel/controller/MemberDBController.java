package com.app.kaka.excel.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.app.kaka.excel.model.ExcelService;
import com.app.kaka.excel.model.WriteListToExcelFile;
import com.app.kaka.member.model.MemberService;
import com.app.kaka.member.model.MemberVO;

@Controller
@RequestMapping("/excel")
public class MemberDBController {
	private static final Logger logger = LoggerFactory.getLogger(MemberDBController.class);
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private ExcelService excelService;
	
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
	
	@RequestMapping(value="/uploadExcel.do", method=RequestMethod.POST)
	public String uploadFile_post(MultipartHttpServletRequest request,Model model){
		MultipartFile file = request.getFile("excel");
		logger.info("받아온 파일의 이름 file={}",file);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<MemberVO> list = new ArrayList<MemberVO>();
		if (file!=null && file.getSize()>0) {
			try {
				Workbook wb = new HSSFWorkbook(file.getInputStream());
				logger.info("들어왔나 확인해야해 wb={}",wb);
				Sheet sheet = wb.getSheetAt(0);
				
				int last = sheet.getLastRowNum();
				logger.info("마지막 시트는 last={}",last);
				
				for(int i=1; i<=last; i++){
					Row row = sheet.getRow(i);
					MemberVO memberVo = new MemberVO();
					
					String member_id = row.getCell(0, Row.CREATE_NULL_AS_BLANK).getStringCellValue();
					
					if (!member_id.equals("") && member_id!=null) {
						
						memberVo.setMemberId(member_id);
						memberVo.setMemberName(row.getCell(1, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						memberVo.setMemberPwd(row.getCell(2, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						memberVo.setMemberJumin(row.getCell(3, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						memberVo.setMemberEmail(row.getCell(4, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						memberVo.setMemberHp(row.getCell(5, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						memberVo.setMemberGender(row.getCell(6, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						memberVo.setMemberZipcode(row.getCell(7, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						memberVo.setMemberAddr(row.getCell(8, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						memberVo.setMemberAddr2(row.getCell(9, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						list.add(memberVo);
						map.put("list", list);
					}
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}//if
		
		excelService.excelAdd(map);
		
		model.addAttribute("msg", "성공성공");
		model.addAttribute("url", "/login/login.do");
		
		return "common/message";
	}
}
