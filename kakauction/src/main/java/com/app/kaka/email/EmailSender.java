package com.app.kaka.email;

import javax.mail.BodyPart;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;


public class EmailSender {
	@Autowired
    protected JavaMailSender  mailSender;
 
    public void SendEmail(Email email) throws Exception {
         
    	MimeMessage msg = mailSender.createMimeMessage();
        
        try {
        	
        	MimeMessageHelper helper = new MimeMessageHelper(msg, true);
        	
        	helper.setSubject(email.getSubject());
	        //msg.setContent(email.getContent());
        	helper.setText(email.getContent(), true);
	        msg.setRecipients(MimeMessage.RecipientType.TO , InternetAddress.parse(email.getReciver()));

	        
        }catch(MessagingException e) {
        	System.out.println("MessagingException");
        	e.printStackTrace();
        }
        try {
        	mailSender.send(msg);
        }catch(MailException e) {
        	System.out.println("MailException발생");
        	e.printStackTrace();
        }
    }
}
