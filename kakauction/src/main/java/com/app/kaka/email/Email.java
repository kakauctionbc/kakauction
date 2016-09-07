package com.app.kaka.email;

import java.sql.Timestamp;

import javax.mail.Multipart;

public class Email {
	private String subject;
    private String content;
	//private Multipart content;
    private String reciver;

    public String getReciver() {
        return reciver;
    }
    public void setReciver(String reciver) {
        this.reciver = reciver;
    }

    public String getSubject() {
        return subject;
    }
    public void setSubject(String subject) {
        this.subject = subject;
    }
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }
	/*public Multipart getContent() {
		return content;
	}
	public void setContent(Multipart content) {
		this.content = content;
	}
    
    */
}
