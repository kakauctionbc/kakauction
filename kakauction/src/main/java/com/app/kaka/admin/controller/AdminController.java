package com.app.kaka.admin.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.kaka.auction.controller.AuctionController;
import com.app.kaka.auction.model.AuctionService;
import com.app.kaka.member.model.MemberService;
import com.app.kaka.member.model.MemberVO;
import com.app.kaka.op.model.OpService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AuctionController.class);
	
	@Autowired
	private AuctionService auctionService;
	
	@Autowired
	private OpService opService;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/index.do")
	public String adminIndex(Model model){
		
		return "admin/index";
	}
	
	@RequestMapping(value="/login/adminLogin.do",method=RequestMethod.GET)
	public String login_get(){
		logger.info("로그인창입니다.");
		
		return "admin/login/adminLogin";
	}
	
	@RequestMapping(value="/login/adminLogin.do", method=RequestMethod.POST)
	public String login_post(@ModelAttribute MemberVO memVo,
			@RequestParam(required=false) String chkSave, 
			HttpServletRequest request,
			HttpServletResponse response,
			Model model){
		memVo.setMemberGrade(MemberService.MEMBER_GRADE_ADMIN);
		logger.info("관리자 로그인 처리, 파라미터 memVo={}",memVo);
		logger.info("관리자 로그인 처리, 파라미터 chkSave={}",chkSave);
		
		String msg="", url="/admin/login/adminLogin.do";
		int result = memberService.loginCheck(memVo);
		logger.info("관리자 로그인 처리 결과는? result={}",result);
		if (result==memberService.LOGIN_OK) {
			MemberVO memberVo = memberService.selectMemberByUserid(memVo.getMemberId());
			//[1]세션에 저장
			HttpSession session = request.getSession();
			session.setAttribute("adminUserid", memVo.getMemberId());
			session.setAttribute("adminUserName", memberVo.getMemberName());
			session.setAttribute("adminGrade", memVo.getMemberGrade());
			//[2]쿠키에 저장
			Cookie ck = new Cookie("admin_ck_userid",memVo.getMemberId());
			if(chkSave!=null){
				ck.setMaxAge(1000*24*60*60); //1000일
				response.addCookie(ck);
			}else{
				ck.setMaxAge(0); //쿠키 제거
				response.addCookie(ck);
			}
			msg=memVo.getMemberId()+"관리자 로그인되었습니다";
			url="/admin/index.do";
		}else if(result==memberService.PWD_DISAGREE){
			//비밀번호 불일치
			msg="비밀번호가 일치하지 않습니다";
		}else if(result==memberService.ID_NONE){
			//해당아이디가 없는 경우
			msg="해당 아이디가 존재하지 않습니다";
		}else{
			msg="로그인 체크 실패";
		}
		//3.
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@RequestMapping("/login/logout.do")
	public String logout(HttpSession session, Model model){
		//1. 
		logger.info("로그아웃 처리");
		
		//2.
		//session.invalidate();
		session.removeAttribute("adminUserid");
		session.removeAttribute("adminUserName");
		session.removeAttribute("adminGrade");
		
		//3.
		model.addAttribute("msg", "로그아웃되었습니다.");
		model.addAttribute("url", "/admin/login/adminLogin.do");
		
		return "common/message";
	}
}
