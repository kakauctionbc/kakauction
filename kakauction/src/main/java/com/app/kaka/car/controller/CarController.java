package com.app.kaka.car.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

import com.app.kaka.auction.model.AuctionService;
import com.app.kaka.car.model.CarService;
import com.app.kaka.car.model.CarVO;
import com.app.kaka.common.FileUploadWebUtil;
import com.app.kaka.common.PaginationInfo;
import com.app.kaka.common.SearchVO;
import com.app.kaka.common.Utility;
import com.app.kaka.member.model.MemberService;
import com.app.kaka.member.model.MemberVO;
import com.app.kaka.op.model.OpService;
import com.app.kaka.op.model.OpVO;
import com.app.kaka.picture.model.OriginPictureVO;
import com.app.kaka.picture.model.PictureService;
import com.app.kaka.picture.model.PictureVO;

@Controller
@RequestMapping("/car")
public class CarController {
	
	private static final Logger logger = LoggerFactory.getLogger(CarController.class);
	
	@Autowired
	private AuctionService acService;
	
	@Autowired
	private CarService carService;
	
	@Autowired
	private OpService opService;
	
	@Autowired
	private PictureService pictureService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private FileUploadWebUtil webUtil;
	
	@RequestMapping(value = "/register.do", method = RequestMethod.GET)
	public String carRegister_get(HttpSession session, Model model){
		String memberId = (String) session.getAttribute("memberId");
		logger.info("차량 등록 페이지 보여주기, 파라미터 memberId = {}", memberId);
		
		MemberVO memVo = memberService.selectMemberByUserid(memberId);
		
		model.addAttribute("memVo", memVo);
		
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
		List<Map<String, Object>> fileList = webUtil.fileUpload(request, webUtil.PICTURE_UPLOAD);
		logger.info("여기는 꼰트롤러 fileList={}",fileList.size());
		//[2]db에 insert하기
		String fileName="";
		int count = 1;
		
		//PictureVO pictureVo = new PictureVO();
		//pictureVo.setCarNum(carVo.getCarNum());
		//pictureVo.setMemberId(carVo.getMemberId());
		for(Map<String, Object> myMap : fileList){
			fileName = (String)myMap.get("fileName");
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
		
		int cCnt = carService.insertCar(carVo);
		int oCnt = opService.insertOp(opVo);
		int pCnt = pictureService.insertPicture(pictureVo);
		
		String msg = "", url = "";
		if((cCnt>0) && (oCnt>0) && (pCnt>0)){
			msg = "차량 등록 성공";
			url = "/car/updateMember.do?memberId="+carVo.getSellerMemberId();
		}else{
			msg = "차량 등록 실패";
			url = "/car/register.do";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@RequestMapping("/updateMember.do")
	public String updateMember(@RequestParam String memberId, Model model){
		String memberGrade = carService.selectMemberGrade(memberId);
		logger.info("memberGrade={},memberId={}",memberGrade,memberId);
		if(memberGrade==null || "MEMBER".equals(memberGrade)){
			int cnt = carService.upMemeberGrade(memberId);
		}
		return "redirect:/design/index.do";
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
		MemberVO memberVo = memberService.selectMemberByUserid(carVo.getSellerMemberId());
		String[] opIn = null;
		String[] opOut = null;
		String[] opCon = null;
		String[] opSafe = null;
		String[] opAa = null;
		String[] opTune = null;
		
		if(opVo.getOpIn()!=null && !opVo.getOpIn().isEmpty()){
			opIn = opVo.getOpIn().split(",");
		}
		if(opVo.getOpOut()!=null && !opVo.getOpOut().isEmpty()){
			opOut = opVo.getOpOut().split(",");
		}
		if(opVo.getOpCon()!=null && !opVo.getOpCon().isEmpty()){
			opCon = opVo.getOpCon().split(",");
		}
		if(opVo.getOpSafe()!=null && !opVo.getOpSafe().isEmpty()){
			opSafe = opVo.getOpSafe().split(",");
		}
		if(opVo.getOpAa()!=null && !opVo.getOpAa().isEmpty()){
			opAa = opVo.getOpAa().split(",");
		}
		if(opVo.getOpTune()!=null && !opVo.getOpTune().isEmpty()){
			opTune = opVo.getOpTune().split(",");
		}
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
	
	@RequestMapping("/list.do")
	public String carList(HttpSession session, Model model){
		String memberId = (String) session.getAttribute("memberId");
		logger.info("등록한 차량 리스트 출력, 파라미터 memberId = {}", memberId);
		
		List<Map<String, Object>> carList = carService.selectCarPictureByMemberId(memberId);
		MemberVO memVo = memberService.selectMemberByUserid(memberId);
		
		model.addAttribute("carList", carList);
		model.addAttribute("memVo", memVo);
		
		return "car/list";
	}
	
	@RequestMapping("/myDeferList.do")
	public String myDeferList(@ModelAttribute SearchVO searchVo, @RequestParam(defaultValue="20") int selectedCountPerPage,
			HttpSession session, Model model){
		String memberId = (String)session.getAttribute("memberId");
		logger.info("내 경매 보류목록, 파라미터 memberId = {}",memberId);
		logger.info("글목록 조회, 파라미터 searchVo={}", searchVo);
		
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(selectedCountPerPage);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.BLOCK_SIZE);
		searchVo.setRecordCountPerPage(selectedCountPerPage);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("글목록 조회, 파라미터 searchVo={}", searchVo);
		
		List<CarVO> alist = carService.selectDeferListByMemberId(memberId);
		logger.info("내 경매 보류목록 검색 결과, alist.size() = {}", alist.size());
		
		//전체 레코드 개수 조회하기
		pagingInfo.setTotalRecord(alist.size());
		
		//3. 결과 저장, 뷰페이지 리턴
		model.addAttribute("alist", alist);
		model.addAttribute("pagingInfo", pagingInfo);
		model.addAttribute("selectedCountPerPage", selectedCountPerPage);
		
		return "car/myDeferList";
	}
	
	@RequestMapping("/edit.do")
	public String editCar(@RequestParam String carNum, HttpSession session, Model model){
		String memberId = (String)session.getAttribute("memberId");
		logger.info("경매 등록 보류 차량 수정 페이지 보여주기, 파라미터 carNum = {}, memberId = {}");
		
		CarVO carVo = new CarVO();
		carVo.setCarNum(carNum);
		carVo.setSellerMemberId(memberId);
		
		Map<String, Object> map = carService.selectDeferCarDetail(carVo);
		
		String[] carBirth = null;
		if(map.get("CAR_BIRTH")!=null && !map.get("CAR_BIRTH").equals("")){
			String carBirthWithoutMonth = ((String)map.get("CAR_BIRTH")).replace("월", ""); 
			carBirthWithoutMonth = carBirthWithoutMonth.replace(" ", ""); 
			carBirth = carBirthWithoutMonth.split("년");
		}
		String[] opIn = null;
		String[] opOut = null;
		String[] opCon = null;
		String[] opSafe = null;
		String[] opAa = null;
		String[] opTune = null;
		
		if(map.get("OP_IN")!=null && !map.get("OP_IN").equals("")){
			opIn = ((String) map.get("OP_IN")).split(",");
		}
		if(map.get("OP_OUT")!=null && !map.get("OP_OUT").equals("")){
			opOut = ((String) map.get("OP_OUT")).split(",");
		}
		if(map.get("OP_CON")!=null && !map.get("OP_CON").equals("")){
			opCon = ((String) map.get("OP_CON")).split(",");
		}
		if(map.get("OP_SAFE")!=null && !map.get("OP_SAFE").equals("")){
			opSafe = ((String) map.get("OP_SAFE")).split(",");
		}
		if(map.get("OP_AA")!=null && !map.get("OP_AA").equals("")){
			opAa = ((String) map.get("OP_AA")).split(",");
		}
		if(map.get("OP_TUNE")!=null && !map.get("OP_TUNE").equals("")){
			opTune = ((String) map.get("OP_TUNE")).split(",");
		}
		
		MemberVO memVo = memberService.selectMemberByUserid(memberId);
		
		model.addAttribute("map", map);
		model.addAttribute("memVo", memVo);
		model.addAttribute("opIn", opIn);
		model.addAttribute("opOut", opOut);
		model.addAttribute("opCon", opCon);
		model.addAttribute("opSafe", opSafe);
		model.addAttribute("opAa", opAa);
		model.addAttribute("opTune", opTune);
		model.addAttribute("carBirth", carBirth);
		
		return "car/editCar";
	}
	
	@RequestMapping("/editCar.do")
	public String editCarDo(HttpServletRequest request, @ModelAttribute CarVO carVo, @ModelAttribute PictureVO pictureVo,
			@ModelAttribute OpVO opVo, @ModelAttribute OriginPictureVO originPictureVo, Model model){
		logger.info("차량 등록 처리, 파라미터 carVO = {}, opVo = {}", carVo, opVo);
		logger.info("pictureVo = {}, originPictureVo = {}", pictureVo, originPictureVo);
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
		List<Map<String, Object>> fileList = webUtil.fileUpload(request, webUtil.PICTURE_UPLOAD);
		logger.info("여기는 꼰트롤러 fileList={}",fileList.size());
		//[2]db에 insert하기
		
		int count = 1;
		
		//PictureVO pictureVo = new PictureVO();
		//pictureVo.setCarNum(carVo.getCarNum());
		//pictureVo.setMemberId(carVo.getMemberId());
		for(Map<String, Object> myMap : fileList){
			String fileName = (String)myMap.get("fileName");
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
		logger.info("차량 등록 처리, 파라미터 carVO = {}, opVo = {}", carVo, opVo);
		logger.info("pictureVo = {}, originPictureVo = {}", pictureVo, originPictureVo);
		
		int cCnt = carService.editCar(carVo);
		int oCnt = opService.editOp(opVo);
		int pCnt = pictureService.editPicture(pictureVo);
		
		String msg = "", url = "";
		if((cCnt>0) && (oCnt>0) && (pCnt>0)){
			msg = "차량 수정 성공";
			url = "/auction/list.do";
		}else{
			msg = "차량 등록 실패";
			url = "/car/edit.do?carNum="+carVo.getCarNum();
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
}



















