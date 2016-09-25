package com.app.kaka.excel.controller;

import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.web.servlet.view.document.AbstractExcelView;

import com.app.kaka.member.model.MemberVO;

public class MemberView extends AbstractExcelView {

	@Override
	protected void buildExcelDocument(Map<String, Object> model, HSSFWorkbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		List<MemberVO> list = (List<MemberVO>) model.get("list");
		
		HSSFSheet workSheet = null;
		HSSFRow row = null;
		
		String sheetName = "회원";
		workSheet = workbook.createSheet(sheetName);
		
		row = workSheet.createRow(0); //row(줄) 안에 cell(칸)을 만들어야 함 
        row.createCell(0).setCellValue("아이디");
        row.createCell(1).setCellValue("이름"); 
        row.createCell(2).setCellValue("비밀번호"); 
        row.createCell(3).setCellValue("주민번호");
        row.createCell(4).setCellValue("이메일"); 
        row.createCell(5).setCellValue("전화번호"); 
        row.createCell(6).setCellValue("성별"); 
        row.createCell(7).setCellValue("우편번호"); 
        row.createCell(8).setCellValue("주소"); 
        row.createCell(9).setCellValue("상세주소"); 
        row.createCell(10).setCellValue("마일리지"); 
        row.createCell(11).setCellValue("등급"); 
        row.createCell(12).setCellValue("탈퇴일"); 
        row.createCell(13).setCellValue("가입일"); 
        
        for (int i = 0; i < list.size(); i++) {
			MemberVO member = list.get(i);
			row = workSheet.createRow(i+1);
			row.createCell(0).setCellValue(member.getMemberId());
			row.createCell(1).setCellValue(member.getMemberName());
			row.createCell(2).setCellValue(member.getMemberPwd());
			row.createCell(3).setCellValue(member.getMemberJumin());
			row.createCell(4).setCellValue(member.getMemberEmail());
			row.createCell(5).setCellValue(member.getMemberHp());
			row.createCell(6).setCellValue(member.getMemberGender());
			row.createCell(7).setCellValue(member.getMemberZipcode());
			row.createCell(8).setCellValue(member.getMemberAddr());
			row.createCell(9).setCellValue(member.getMemberAddr2());
			row.createCell(10).setCellValue(member.getMemberMileage());
			row.createCell(11).setCellValue(member.getMemberGrade());
			row.createCell(12).setCellValue(member.getMemberOutdate());
			row.createCell(13).setCellValue(member.getMemberRegdate());
		}
        
       /* //열기, 저장 선택창이 뜨는게아니라 바로 저장되게 함
        response.setContentType("Application/msexcel");*/
        //저장하는 이름
        String filename = URLEncoder.encode(sheetName,"UTF-8");
        //response.setHeader("Content-Disposition", "attachment;filename="+filename+".excel");
        
        // 엑셀파일로 만듬
        response.setContentType("Application/Msexcel");
        // 다운받을때 헤더 설정
        response.setHeader("Content-Disposition", "ATTachment; Filename=" + filename + ".xls");
	}
}
