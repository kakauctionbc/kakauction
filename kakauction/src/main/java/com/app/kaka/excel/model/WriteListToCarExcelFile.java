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
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.app.kaka.car.model.CarVO;
import com.app.kaka.excel.controller.MemberDBController;
import com.app.kaka.member.model.MemberVO;

public class WriteListToCarExcelFile {
	private static final Logger logger = LoggerFactory.getLogger(MemberDBController.class);
	 
	public static void writeNoticeListToFile(String fileName, List<CarVO> carList) throws Exception{
		 	
	        Workbook workbook = null;
	         
	        if(fileName.endsWith("xlsx")){
	            workbook = new XSSFWorkbook();
	        }else if(fileName.endsWith("xls")){
	            workbook = new HSSFWorkbook();
	        }else{
	            throw new Exception("invalid file name, should be xls or xlsx");
	        }
	         
	        Sheet sheet = workbook.createSheet("차량정보");
	         
	        Iterator<CarVO> iterator = carList.iterator();
	         
	        int rowIndex = 0;
	        int excelname=0; // 처음에 고정값을 넣기 위해 사용한 변수
	        do{
	        	CarVO car = iterator.next();
	            Row row = sheet.createRow(rowIndex++);
	            
	            if(excelname==0){ // 처음에 고정값 
	                 Cell cell0 = row.createCell(0);
	                 cell0.setCellValue("차량번호");
	                 Cell cell1 = row.createCell(1);                                                                                                                     
	                 cell1.setCellValue("판매자아이디");
	                 Cell cell2 = row.createCell(2);
	                 cell2.setCellValue("공고기관");
	                 Cell cell3 = row.createCell(3);
	                 cell3.setCellValue("매매가");
	                 Cell cell4 = row.createCell(4);
	                 cell4.setCellValue("현재위치");
	                 Cell cell5 = row.createCell(5);
	                 cell5.setCellValue("연식");
	                 Cell cell6 = row.createCell(6);
	                 cell6.setCellValue("차량모델");
	                 Cell cell7 = row.createCell(7);
	                 cell7.setCellValue("차량크기");
	                 Cell cell8 = row.createCell(8);
	                 cell8.setCellValue("주행거리");
	                 Cell cell9 = row.createCell(9);
	                 cell9.setCellValue("연료");
	                 Cell cell10 = row.createCell(10);
	                 cell10.setCellValue("배기량");
	                 Cell cell11 = row.createCell(11);
	                 cell11.setCellValue("변속기");
	                 Cell cell12 = row.createCell(12);
	                 cell12.setCellValue("색상");
	                 Cell cell13 = row.createCell(13);
	                 cell13.setCellValue("사고유무");
	                 Cell cell14 = row.createCell(14);
	                 cell14.setCellValue("등록일");
	                 Cell cell15 = row.createCell(15);
	                 cell15.setCellValue("경매등록여부");
	                 Cell cell16 = row.createCell(16);
	                 cell16.setCellValue("유찰횟수");
	                 
	                 excelname++;
	                 logger.info("이건 뭐냐 excelname={}",excelname);
	            } else {  // 다음부터는 순차적으로 값이 들어감 
	                 
	                 Cell cell0 = row.createCell(0);
	                 cell0.setCellValue(car.getCarNum());
	                 Cell cell1 = row.createCell(1);
	                 cell1.setCellValue(car.getSellerMemberId());
	                 Cell cell2 = row.createCell(2);
	                 cell2.setCellValue(car.getCarCompany());
	                 Cell cell3 = row.createCell(3);
	                 cell3.setCellValue(car.getCarPrice());
	                 Cell cell4 = row.createCell(4);
	                 cell4.setCellValue(car.getCarLoc());
	                 Cell cell5 = row.createCell(5);
	                 cell5.setCellValue(car.getCarBirth());
	                 Cell cell6 = row.createCell(6);
	                 cell6.setCellValue(car.getCarModel());
	                 Cell cell7 = row.createCell(7);
	                 cell7.setCellValue(car.getCarSize());
	                 Cell cell8 = row.createCell(8);
	                 cell8.setCellValue(car.getCarDist());
	                 Cell cell9 = row.createCell(9);
	                 cell9.setCellValue(car.getCarGas());
	                 Cell cell10 = row.createCell(10);
	                 cell10.setCellValue(car.getCarCc());
	                 Cell cell11 = row.createCell(11);
	                 cell11.setCellValue(car.getCarAm());
	                 Cell cell12 = row.createCell(12);
	                 cell12.setCellValue(car.getCarColor());
	                 Cell cell13 = row.createCell(13);
	                 cell13.setCellValue(car.getCarAcci());
	                 Cell cell14 = row.createCell(14);
	                 cell14.setCellValue(car.getCarRegdate());
	                 Cell cell15 = row.createCell(15);
	                 cell15.setCellValue(car.getCarAuctionYn());
	                 Cell cell16 = row.createCell(16);
	                 cell16.setCellValue(car.getCarFailSell());
	            }
	        }while(iterator.hasNext());
	     
	         
	        //lets write the excel data to file now
	        FileOutputStream fos = new FileOutputStream("D:\\kaka\\kakauction\\kakauction\\src\\main\\webapp\\excel_download\\"+fileName);
	        workbook.write(fos);
	        fos.close();
	        
	        System.out.println(fileName + " written successfully");
	    }
}
