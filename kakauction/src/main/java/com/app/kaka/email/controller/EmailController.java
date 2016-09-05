package com.app.kaka.email.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.app.kaka.email.Email;
import com.app.kaka.email.EmailSender;
import com.app.kaka.email.model.EmailService;
import com.app.kaka.member.model.MemberVO;

@Controller
@RequestMapping("/fing")
public class EmailController {
	   private static final Logger logger = LoggerFactory.getLogger(EmailController.class);
	
	   @Autowired(required=false)
	   private EmailService emailService;
	   
	   @Autowired(required=false)
	   private EmailSender emailSender;
	   
	   @Autowired(required=false)
	   private Email email;
	   
	   @RequestMapping(value="/user_find_password.do", method=RequestMethod.GET)
	   public String sendEmailAction_get(){
		   logger.info("화면보기");
		   
		   return "fing/user_find_password";
	   }
	  
	   @RequestMapping(value="/user_find_password.do", method=RequestMethod.POST)
	    public ModelAndView sendEmailAction_post (@ModelAttribute MemberVO memberVo, ModelMap model) throws Exception {
	        ModelAndView mav;
	        String memberId = memberVo.getMemberId();
	        String memberEmail = memberVo.getMemberEmail(); 
	        
	        //String memberId=(String) paramMap.get("memberId");
	        //String memberEmail=(String) paramMap.get("memberEmail");
	        
	        logger.info("받았을까 아이디랑 이메일?? memberId={},memberEmail={}",memberId,memberEmail);
	        
	        //String memberPwd = emailService.getPwd(memberVo);
	        String memberPwd = "a1234567";
	        logger.info("너 왜 널임? memberPwd={}",memberPwd);
	        
	        System.out.println(memberPwd);
	        if(memberPwd!=null) {
	            email.setContent("비밀번호는 "+memberPwd+" 입니다.");
	            email.setReciver(memberEmail);
	            email.setSubject(memberId+"님 비밀번호 찾기 메일입니다.");
	            emailSender.SendEmail(email);
	            mav= new ModelAndView("redirect:/login/login.do");
	            return mav;
	        }else {
	            mav=new ModelAndView("redirect:/login/login.do");
	            return mav;
	        }
	    }
}
