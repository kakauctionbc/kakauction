package com.app.kaka.excel.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
}
