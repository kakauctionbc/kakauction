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

import com.app.kaka.car.model.CarVO;
import com.app.kaka.excel.model.ExcelService;
import com.app.kaka.excel.model.WriteListToCarExcelFile;
import com.app.kaka.excel.model.WriteListToExcelFile;
import com.app.kaka.member.model.MemberVO;

@Controller
@RequestMapping("/excel")
public class CarDBController {
	private static Logger logger = LoggerFactory.getLogger(CarDBController.class);
	
	@Autowired
	private ExcelService excelService;
	
	@RequestMapping(value="/carExcel.do", method=RequestMethod.GET)
	public String carExcel_get(){
		logger.info("차량 정보 가져오기");
		
		return "excel/downloadExcel";
	}
	
	@RequestMapping(value="/carExcel.do", method=RequestMethod.POST)
	public String carExcel_post(Model model) throws Exception{
		List<CarVO> carList = excelService.excelCarList();
		logger.info("carList 확인 carList.size={}",carList.size());
		
		if (carList!=null) {
			WriteListToCarExcelFile.writeNoticeListToFile("carList.xls", carList);
			logger.info("파일을 확인해보자 carList={}",carList);
			model.addAttribute("msg","다운 성공");
        	model.addAttribute("url","/login/login.do");
		}
		
	    return "common/message";
	}
	
	@RequestMapping(value="/uploadCarExcel.do", method=RequestMethod.GET)
	public String uploadFile_get(){
		logger.info("업로드 화면 보여주기");
		
		return "excel/uploadCarExcel";
	}
	
	@RequestMapping(value="/uploadCarExcel.do", method=RequestMethod.POST)
	public String uploadFile_post(MultipartHttpServletRequest request){
		MultipartFile file = request.getFile("excel");
		logger.info("받아온 파일의 이름 file={}",file);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<CarVO> list = new ArrayList<CarVO>();
		if (file!=null && file.getSize()>0) {
			try {
				Workbook wb = new HSSFWorkbook(file.getInputStream());
				logger.info("들어왔나 확인해야해 wb={}",wb);
				Sheet sheet = wb.getSheetAt(0);
				
				int last = sheet.getLastRowNum();
				logger.info("마지막 시트는 last={}",last);
				
				for(int i=1; i<=last; i++){
					Row row = sheet.getRow(i);
					CarVO carVo = new CarVO();
					
					String car_num = row.getCell(0, Row.CREATE_NULL_AS_BLANK).getStringCellValue();
					
					if (!car_num.equals("") && car_num!=null) {
						
						carVo.setCarNum(car_num);
						carVo.setSellerMemberId(row.getCell(1, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						carVo.setCarCompany(row.getCell(2, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						carVo.setCarPrice(row.getCell(3, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						carVo.setCarLoc(row.getCell(4, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						carVo.setCarBirth(row.getCell(5, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						carVo.setCarModel(row.getCell(6, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						carVo.setCarSize(row.getCell(7, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						carVo.setCarDist(row.getCell(8, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						carVo.setCarGas(row.getCell(9, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						carVo.setCarCc(row.getCell(10, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						carVo.setCarAm(row.getCell(11, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						carVo.setCarColor(row.getCell(12, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						carVo.setCarAcci(row.getCell(13, Row.CREATE_NULL_AS_BLANK).getStringCellValue());
						
						list.add(carVo);
						map.put("list", list);
					}
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}//if
		
		excelService.excelAddCar  (map);
		
		
		return "redrect:/login/login.do";
	}
}
