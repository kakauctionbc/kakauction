package com.app.kaka.excel.model;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.app.kaka.member.model.MemberVO;

public class WriteListToExcelFile {
	 public static void writeNoticeListToFile(String fileName, List<MemberVO> noticeList,HttpServletResponse response) throws Exception{
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
	        
	        FileOutputStream fileOut = null;
	        fileOut = new FileOutputStream("C:\\Users\\User\\Desktop\\"+fileName);
	        workbook.write(fileOut);
	        fileOut.close();
	     
	        //여기부터 화일 다운로드 창이 자동으로 뜨게 하기 위한 코딩(임시화일을 스트림으로 저장)
	        File file = new File ("C:\\Users\\User\\Desktop\\"+fileName);  //해당 경로의 파일 객체를 만든다. 
	        byte[] bytestream = new byte[(int)file.length()];  //파일 스트림을 저장하기 위한 바이트 배열 생성. 
	        FileInputStream filestream = new FileInputStream(file);   //파일 객체를 스트림으로 불러온다. 
	        int i = 0, j = 0;   //파일 스트림을 바이트 배열에 넣는다. 
	        while((i = filestream.read()) != -1) { 
	         bytestream[j] = (byte)i; 
	         j++; 
	        }
	        filestream.close();   //FileInputStream을 닫아줘야 file이 삭제된다.
	        try{
	         boolean  success = file.delete(); //화일을 생성과 동시에 byte[]배열에 입력후 화일은 삭제
	         if(!success) System.out.println("<script>alert('not success')</script>"); 
	        } catch(IllegalArgumentException e){ 
	         System.err.println(e.getMessage()); 
	        }
	        
	        
	        //response.setContentType("application/x-msdownload;charset=EUC-KR");  //응답 헤더의 Content-Type을 세팅한다.  
	        response.setHeader("Content-Disposition","attachment; filename="+fileName); //Content-Disposition 헤더에 파일 이름 세팅.
	        OutputStream outStream = response.getOutputStream();  // 응답 스트림 객체를 생성한다. 
	        outStream.write(bytestream);  // 응답 스트림에 파일 바이트 배열을 쓴다. 
	        outStream.close();
	        
	        //lets write the excel data to file now
	        /*FileOutputStream fos = new FileOutputStream("D:\\kaka\\kakauction\\kakauction\\src\\main\\webapp\\excel_download\\"+fileName);
	        FileOutputStream fos = new FileOutputStream("C:\\Users\\User\\Desktop\\"+fileName);
	        workbook.write(fos);
	        fos.close();*/
	        
	        System.out.println(fileName + " written successfully");
	    }
}
