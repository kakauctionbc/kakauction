package com.app.kaka.email.controller;


import java.lang.ProcessBuilder.Redirect;

import javax.mail.BodyPart;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.app.kaka.email.Email;
import com.app.kaka.email.EmailSender;
import com.app.kaka.email.model.EmailService;
import com.app.kaka.member.model.MemberService;
import com.app.kaka.member.model.MemberVO;

@Controller
@RequestMapping("/fing")
public class EmailController {
	   private static final Logger logger = LoggerFactory.getLogger(EmailController.class);
	
	   @Autowired
	   private EmailService emailService;
	   
	   @Autowired
	   private MemberService memberService;
	   
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
	    public String sendEmailAction_post (@ModelAttribute MemberVO memberVo, Model model) throws Exception {
	        ModelAndView mav;
	        logger.info("받았을까 아이디랑 이메일?? memberVo={}",memberVo);
	        String memberId = memberVo.getMemberId();
	        String memberEmail = memberVo.getMemberEmail(); 
	        
	        logger.info("받았을까 아이디랑 이메일?? memberId={},memberEmail={}",memberId,memberEmail);
	        
	        int result = emailService.updatePwd(memberVo);
	        
	        String newPwd = memberVo.getMemberPwd();
	        
	        //MimeMultipart multipart = new MimeMultipart("related");
	        
        	// first part  (the html)
            //BodyPart messageBodyPart = new MimeBodyPart();
           /* String htmlText = "<h1>인증번호를 알려드립니다.</h1><br><br>"
            		+ "<p style='font-weight: bold;font-size: 2em;'>안녕하세요. kakAution입니다.</p><br>"
            		+ "<p>kakaAution 비밀번호 찾기 인증번호를 다음과 같이 알려드립니다.</p><br><br>"
            		+ "<p style='color: #fae100'>인증번호 6자리를 진행 중인 화면에 입력해주세요</p>"
            		+ "<p>인증번호 : <p>"
            		+ "<p style='font-weight: bold;'>"+newPwd+"</p><br><br>"
            		+ "<p style='font-weight: bold;'>감사합니다.</p>";*/
	        String htmlText="<div style='background:#fae100'>"
	        		+ "<img alt='test' src=''>"
	        		+"<div style='background:#fae100'>"
	        		+"<h1 text-align='left'>임시 비밀번호를 알려드립니다.</h1><br><br>"
	        		+"<p style='font-weight: bold;font-size: 2em;'>안녕하세요. kakAution입니다.</p><br>"
	        		+"<p>kakaAution 비밀번호 찾기 임시비밀번호를 다음과 같이 알려드립니다.</p><br><br>"
	        		+"</div>"
	        		+"<div style='background:white;'>"
	        		+"<p style='color: #fae100'>임시 비밀번호로 로그인 하신 후 비밀번호를 변경해 주세요.</p>"
	        		+"<p>인증번호 : <p>"
	        		+"<p style='font-weight: bold;'>"+newPwd+"</p><br><br>"
	        		+"</div>"
	        		+ "<p style='font-weight: bold;'>감사합니다.</p>"
	        		+"</div>";

            //messageBodyPart.setContent(htmlText, "text/html");

            //multipart.addBodyPart(messageBodyPart);
            
	        
	        if(result>0) {
	        	//email.setContent(multipart);
	        	email.setContent(htmlText);
	            email.setReciver(memberEmail);
	            email.setSubject(memberId+"님 요청하신 임시 비밀번호 입니다.");
	            emailSender.SendEmail(email);
	            /*mav= new ModelAndView("redirect:/fing/randomPwd.do?memberId="+memberId);*/
	            
	            model.addAttribute("msg", "임시비밀번호를 해당 이메일로 전송하였습니다.");
	            model.addAttribute("url", "/login/login.do");
	            /*mav= new ModelAndView("redirect:/login/login.do");
	            return mav;*/
	            return "common/message";
	        }else {
	            /*mav=new ModelAndView("redirect:/fing/user_find_password.do");
	            return mav;*/
	        	 model.addAttribute("msg", "본인 인증에 실패하였습니다. 다시 입력해주세요");
		         model.addAttribute("url", "/fing/user_find_password.do");
	        	 return "common/message";
	        }
	    }
	   
	   @RequestMapping(value="/randomPwd.do", method=RequestMethod.GET)
	   public String randomPwdWrite_get(){
		   logger.info("인증번호 창 보여주기");
		   
		   return "fing/randomPwd";
	   }
	   
	   @RequestMapping(value="/randomPwd.do", method=RequestMethod.POST)
	   public String randomPwdWrite_post(@RequestParam MemberVO memberVo, Model model,@RequestParam String memberId, @RequestParam String memberPwd){
		   logger.info("받아온 인증번호 memberPwd={}",memberPwd);
		   
		   int result = memberService.loginCheck(memberVo);
		   logger.info("로그인 결과 result={}",result);
		   
		   String msg="",url="/login/login.do";
			if (result==MemberService.LOGIN_OK) {
				url="/fing/pwd_Edit.do?memberId"+memberId;
			}else if (result==MemberService.PWD_DISAGREE) {
				msg="인증번호가 일치하지 않습니다.";
			}
			
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			
			return "common/message";
		   
	   }
	   
	   @RequestMapping(value="/pwd_Edit.do", method=RequestMethod.GET)
	   public String pwdEdit_get(Model model){
		   logger.info("pwd수정창 보여주기");
		   
		   return "fing/pwd_Edit";
	   }
	   
	   @RequestMapping(value="/pwd_Edit.do", method=RequestMethod.POST)
	   public String pwdEdit_post(@ModelAttribute MemberVO memberVo,Model model){
		   logger.info("회원 비밀번호 수정하기 memberVo={}",memberVo);
		   
		   int result = memberService.updateMemberPwd(memberVo);
		   
		   String msg="",url="";
		   if (result>0) {
			   msg="비밀번호를 변경하였습니다.";
			   url="/login/login.do";
		   } else {
			   msg="변경 실패";
			   url="/fing/pwd_Edit.do";
		   }
		   
		   model.addAttribute("msg", msg);
		   model.addAttribute("url", url);
		   
		   return "common/message";
	   }
	   
	   @RequestMapping(value="/user_find_id.do", method=RequestMethod.GET)
	   public String memberIdFind_get(){
		   logger.info("아이디 찾기 화면입니다.");
		   
		   return "fing/user_find_id";
	   }
	   
	   @RequestMapping(value="/user_find_id.do", method=RequestMethod.POST)
	   public String memberIdFind_post(@ModelAttribute MemberVO memberVo,Model model){
		   logger.info("받아온 아이들 memberVo={}",memberVo);
		   
		   String memberId = memberService.findMemberId(memberVo);
		   model.addAttribute("memberId", memberId);
		   
		   return "fing/user_find_id";
	   }
}
