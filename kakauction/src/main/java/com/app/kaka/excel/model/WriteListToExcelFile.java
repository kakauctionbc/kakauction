package com.app.kaka.excel.model;

import java.io.FileOutputStream;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.app.kaka.member.model.MemberVO;

public class WriteListToExcelFile {
	 public static void writeNoticeListToFile(String fileName, List<MemberVO> noticeList) throws Exception{
	        Workbook workbook = null;
	         
	        if(fileName.endsWith("xlsx")){
	            workbook = new XSSFWorkbook();
	        }else if(fileName.endsWith("xls")){
	            workbook = new HSSFWorkbook();
	        }else{
	            throw new Exception("invalid file name, should be xls or xlsx");
	        }
	         
	        Sheet sheet = workbook.createSheet("회원");
	         
	        Iterator<MemberVO> iterator = noticeList.iterator();
	         
	        int rowIndex=0;
	        int excelname=0; // 처음에 고정값을 넣기 위해 사용한 변수
	        do{
	        	MemberVO member = iterator.next();
	            Row row = sheet.createRow(rowIndex++);
	           
	            
	            if(excelname==0){ // 처음에 고정값 
	                 
	                 Cell cell0 = row.createCell(0);
	                 cell0.setCellValue("ID");
	                 Cell cell1 = row.createCell(1);
	                 cell1.setCellValue("이름");
	                 Cell cell2 = row.createCell(2);
	                 cell2.setCellValue("주민번호");
	                 Cell cell3 = row.createCell(3);
	                 cell3.setCellValue("이메일");
	                 Cell cell4 = row.createCell(4);
	                 cell4.setCellValue("전화번호");
	                 Cell cell5 = row.createCell(5);
	                 cell5.setCellValue("성별");
	                 Cell cell6 = row.createCell(6);
	                 cell6.setCellValue("우편번호");
	                 Cell cell7 = row.createCell(7);
	                 cell7.setCellValue("주소");
	                 Cell cell8 = row.createCell(8);
	                 cell8.setCellValue("상세주소");
	                 Cell cell9 = row.createCell(9);
	                 cell9.setCellValue("마일리지");
	                 Cell cell10 = row.createCell(10);
	                 cell10.setCellValue("등급");
	                 
	                 excelname++;
	            }else{  // 다음부터는 순차적으로 값이 들어감 
	                 
	                 Cell cell0 = row.createCell(0);
	                 cell0.setCellValue(member.getMemberId());
	                 Cell cell1 = row.createCell(1);
	                 cell1.setCellValue(member.getMemberName());
	                 Cell cell2 = row.createCell(2);
	                 cell2.setCellValue(member.getMemberJumin());
	                 Cell cell3 = row.createCell(3);
	                 cell3.setCellValue(member.getMemberEmail());
	                 Cell cell4 = row.createCell(4);
	                 cell4.setCellValue(member.getMemberHp());
	                 Cell cell5 = row.createCell(5);
	                 cell5.setCellValue(member.getMemberGender());
	                 Cell cell6 = row.createCell(6);
	                 cell6.setCellValue(member.getMemberZipcode());
	                 Cell cell7 = row.createCell(7);
	                 cell7.setCellValue(member.getMemberAddr());
	                 Cell cell8 = row.createCell(8);
	                 cell8.setCellValue(member.getMemberAddr2());
	                 Cell cell9 = row.createCell(9);
	                 cell9.setCellValue(member.getMemberMileage());
	                 Cell cell10 = row.createCell(10);
	                 cell10.setCellValue(member.getMemberGrade());
	            }
	            
	            
	        }while(iterator.hasNext());
	     
	         
	        //lets write the excel data to file now
/*	        FileOutputStream fos = new FileOutputStream("D:\\kaka\\kakauction\\kakauction\\src\\main\\webapp\\excel_download\\"+fileName);*/
	        FileOutputStream fos = new FileOutputStream("C:\\Users\\User\\Desktop\\"+fileName);
	        workbook.write(fos);
	        fos.close();
	        
	        System.out.println(fileName + " written successfully");
	    }
}
