package com.app.kaka.map.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/map")
public class MapController {
	
	private static final Logger logger = LoggerFactory.getLogger(MapController.class);
	
	@RequestMapping("/mapConti.do")
	public String showMap(){
		logger.info("지도 보여주기");
		
		return "map/mapConti";
	}
}
