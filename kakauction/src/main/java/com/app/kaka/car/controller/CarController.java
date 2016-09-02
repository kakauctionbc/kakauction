package com.app.kaka.car.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/car")
public class CarController {
	
	private static final Logger logger = LoggerFactory.getLogger(CarController.class);
	
	@RequestMapping(value = "/register.do", method = RequestMethod.GET)
	public String carRegister(){
		logger.info("차량 등록 페이지 보여주기");
		
		return "car/register2";
	}
}
