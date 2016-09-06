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
import org.springframework.web.bind.annotation.RequestParam;

import com.app.kaka.car.model.CarService;
import com.app.kaka.car.model.CarVO;
import com.app.kaka.member.model.MemberService;
import com.app.kaka.member.model.MemberVO;
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
	
	@Autowired
	private MemberService memberService;
	
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
		logger.info("pictureVo = {}", pictureVo);
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
		int count = 1;
		
		//PictureVO pictureVo = new PictureVO();
		//pictureVo.setCarNum(carVo.getCarNum());
		//pictureVo.setMemberId(carVo.getMemberId());
		for(Map<String, Object> myMap : fileList){
			fileName = (String)myMap.get("picture");
			System.out.println("fileName = "+fileName);
			if(count==1){
				pictureVo.setPicture1(fileName);
			}else if(count==2){
				pictureVo.setPicture2(fileName);
			}else if(count==3){
				pictureVo.setPicture3(fileName);
			}else if(count==4){
				pictureVo.setPicture4(fileName);
			}else if(count==5){
				pictureVo.setPicture5(fileName);
			}else if(count==6){
				pictureVo.setPicture6(fileName);
			}else if(count==7){
				pictureVo.setPicture7(fileName);
			}else if(count==8){
				pictureVo.setPicture8(fileName);
			}else if(count==9){
				pictureVo.setPicture9(fileName);
			}else if(count==10){
				pictureVo.setPicture10(fileName);
			}else if(count==11){
				pictureVo.setPicture11(fileName);
			}else if(count==12){
				pictureVo.setPicture12(fileName);
			}else if(count==13){
				pictureVo.setPicture13(fileName);
			}else if(count==14){
				pictureVo.setPicture14(fileName);
			}else if(count==15){
				pictureVo.setPicture15(fileName);
			}else if(count==16){
				pictureVo.setPicture16(fileName);
			}else if(count==17){
				pictureVo.setPicture17(fileName);
			}else if(count==18){
				pictureVo.setPicture18(fileName);
			}else if(count==19){
				pictureVo.setPicture19(fileName);
			}else if(count==20){
				pictureVo.setPicture20(fileName);
			}
			count++;
		}//for
		logger.info("pictureVo={}",pictureVo);
		
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
	
	@RequestMapping("/detail.do")
	public String carDetail(@RequestParam(defaultValue="")String carNum,
			HttpServletRequest request, Model model){
		if (carNum.equals("") || carNum.isEmpty() || carNum==null) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/car/list.do");
			
			return "common/message";
		}
		logger.info("차량 세부사항 보여주기, 파라미터 carNum={}", carNum);
		
		CarVO carVo = carService.carDetail(carNum);
		OpVO opVo = opService.opDetail(carNum);
		PictureVO pictureVo = pictureService.pictureDetail(carNum);
		MemberVO memberVo = memberService.selectMemberByUserid(carVo.getMemberId());
		
		String[] opIn = opVo.getOpIn().split(",");
		String[] opOut = opVo.getOpOut().split(",");
		String[] opCon = opVo.getOpCon().split(",");
		String[] opSafe = opVo.getOpSafe().split(",");
		String[] opAa = opVo.getOpAa().split(",");
		String[] opTune = opVo.getOpTune().split(",");
		
		System.out.println("carVo = "+ carVo+"\n");
		System.out.println("opVo = "+ opVo+"\n");
		System.out.println("pictureVo = "+ pictureVo+"\n");
		System.out.println("memberVo = "+memberVo);
		
		model.addAttribute("carVo", carVo);
		model.addAttribute("opVo", opVo);
		model.addAttribute("pictureVo", pictureVo);
		model.addAttribute("memberVo", memberVo);
		model.addAttribute("opIn", opIn);
		model.addAttribute("opOut", opOut);
		model.addAttribute("opCon", opCon);
		model.addAttribute("opSafe", opSafe);
		model.addAttribute("opAa", opAa);
		model.addAttribute("opTune", opTune);
		
		return "car/detail";
	}
}
