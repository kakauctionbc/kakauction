package com.app.kaka.email.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.app.kaka.email.Email;
import com.app.kaka.email.EmailSender;
import com.app.kaka.email.model.EmailService;
import com.app.kaka.member.model.MemberVO;

@Controller
@RequestMapping("/fing")
public class EmailController {
	   private static final Logger logger = LoggerFactory.getLogger(EmailController.class);
	
	   @Autowired
	   private EmailService emailService;
	   
	   @Autowired(required=false)
	   private EmailSender emailSender;
	   
	   @Autowired(required=false)
	   private Email email;
	   
	   @RequestMapping(value="/user_find_password.do", method=RequestMethod.GET)
	   public String sendEmailAction_get(Model model){
		   logger.info("화면보기");
		   
		   //임시 비밀번호 생성하기
	        String password  = "";
	        for(int i = 0; i < 8; i++){
		         char lowerStr = (char)(Math.random() * 26 + 97);
		         if(i%2 == 0){
		        	 password  += (int)(Math.random() * 10);
		         }else{
		        	 password  += lowerStr;
		         }
	        }
	        
	        model.addAttribute("memberPwd", password);
		   
		   return "fing/user_find_password";
	   }
	  
	   @RequestMapping(value="/user_find_password.do", method=RequestMethod.POST)
	    public ModelAndView sendEmailAction_post (@ModelAttribute MemberVO memberVo, Model model) throws Exception {
	        ModelAndView mav;
	        logger.info("받았을까 아이디랑 이메일?? memberVo={}",memberVo);
	        String memberId = memberVo.getMemberId();
	        String memberEmail = memberVo.getMemberEmail(); 
	        
	        logger.info("받았을까 아이디랑 이메일?? memberId={},memberEmail={}",memberId,memberEmail);
	        
	        /*String memberPwd = emailService.getPwd(memberVo);
	        logger.info("비번찾는 회원의 비밀번호는 ? memberPwd={}",memberPwd);*/
	        	
	        int result = emailService.updatePwd(memberVo);
	        
	        String newPwd = memberVo.getMemberPwd();
	        
	        if(result>0) {
	            email.setContent("고객님의 임시 비밀번호는 "+newPwd+" 입니다.");
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
