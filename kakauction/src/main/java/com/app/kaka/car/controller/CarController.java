package com.app.kaka.car.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.kaka.car.model.CarService;
import com.app.kaka.car.model.CarVO;
import com.app.kaka.op.model.OpService;
import com.app.kaka.op.model.OpVO;
import com.app.kaka.picture.model.PictureService;
import com.app.kaka.picture.model.PictureVO;

@Controller
@RequestMapping("/car")
public class CarController {
	
	private static final Logger logger = LoggerFactory.getLogger(CarController.class);
	
	@Autowired
	private CarService carService;
	
	@Autowired
	private OpService opService;
	
	@Autowired
	private PictureService pictureService;
	
	@RequestMapping(value = "/register.do", method = RequestMethod.GET)
	public String carRegister_get(){
		logger.info("차량 등록 페이지 보여주기");
		
		return "car/register";
	}
	
	@RequestMapping(value = "/register.do", method = RequestMethod.POST)
	@Transactional
	public String carRegister_post(HttpServletRequest request, @ModelAttribute CarVO carVo, @ModelAttribute PictureVO pictureVo,
			@ModelAttribute OpVO opVo, Model model){
		
		logger.info("차량 등록 처리, 파라미터 carVO = {}, opVo = {}", carVo, opVo);
		
		if(opVo.getOpAa()==null || opVo.getOpAa().isEmpty()){
			opVo.setOpAa("");
		}
		if(opVo.getOpCon()==null || opVo.getOpCon().isEmpty()){
			opVo.setOpCon("");
		}
		if(opVo.getOpIn()==null || opVo.getOpIn().isEmpty()){
			opVo.setOpIn("");
		}
		if(opVo.getOpOut()==null || opVo.getOpOut().isEmpty()){
			opVo.setOpOut("");
		}
		if(opVo.getOpSafe()==null || opVo.getOpSafe().isEmpty()){
			opVo.setOpSafe("");
		}
		if(opVo.getOpTune()==null || opVo.getOpTune().isEmpty()){
			opVo.setOpTune("");
		}
		
		//[1]파일 업로드 처리하기
		List<Map<String, Object>> fileList = pictureService.fileupload(request);
		logger.info("여기는 꼰트롤러 fileList={}",fileList.size());
		//[2]db에 insert하기
		String fileName="";
		int count = 0;
		
		for(Map<String, Object> myMap : fileList){
			fileName = (String)myMap.get("picture");
			count++;
			if(count==1){
				pictureVo.setPicture1(fileName);
				count++;
			}
			if(count==2){
				pictureVo.setPicture2(fileName);
				count++;
			}
			if(count==3){
				pictureVo.setPicture3(fileName);
				count++;
			}
			if(count==4){
				pictureVo.setPicture4(fileName);
				count++;
			}
			if(count==5){
				pictureVo.setPicture5(fileName);
				count++;
			}
			if(count==6){
				pictureVo.setPicture6(fileName);
				count++;
			}
			if(count==7){
				pictureVo.setPicture7(fileName);
				count++;
			}
			if(count==8){
				pictureVo.setPicture8(fileName);
				count++;
			}
			if(count==9){
				pictureVo.setPicture9(fileName);
				count++;
			}
			if(count==10){
				pictureVo.setPicture10(fileName);
				count++;
			}
			if(count==11){
				pictureVo.setPicture11(fileName);
				count++;
			}
			if(count==12){
				pictureVo.setPicture12(fileName);
				count++;
			}
			if(count==13){
				pictureVo.setPicture13(fileName);
				count++;
			}
			if(count==14){
				pictureVo.setPicture14(fileName);
				count++;
			}
			if(count==15){
				pictureVo.setPicture15(fileName);
				count++;
			}
			if(count==16){
				pictureVo.setPicture16(fileName);
				count++;
			}
			if(count==17){
				pictureVo.setPicture17(fileName);
				count++;
			}
			if(count==18){
				pictureVo.setPicture18(fileName);
				count++;
			}
			if(count==19){
				pictureVo.setPicture19(fileName);
				count++;
			}
			if(count==20){
				pictureVo.setPicture20(fileName);
				count++;
			}
			
		}//for
		

		
		int cCnt = carService.insertCar(carVo);
		int oCnt = opService.insertOp(opVo);
		int pCnt = pictureService.insertPicture(pictureVo);
		
		String msg = "", url = "";
		if((cCnt>0) && (oCnt>0) && (pCnt>0)){
			msg = "차량 등록 성공";
			url = "/design/index.do";
		}else{
			msg = "차량 등록 실패";
			url = "/car/register.do";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
}
