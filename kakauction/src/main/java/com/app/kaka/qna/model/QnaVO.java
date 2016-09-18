package com.app.kaka.qna.model;

import java.sql.Timestamp;

public class QnaVO {
	private int questionNo;
	private String memberId;
	private String questionTitle;
	private String questionContent;
	private Timestamp questionRegdate;
	private String questionOnly;
	private String questionReturn;
	
	private int newImgTerm;
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getQuestionContent() {
		return questionContent;
	}
	public void setQuestionContent(String questionContent) {
		this.questionContent = questionContent;
	}
	public int getQuestionNo() {
		return questionNo;
	}
	public void setQuestionNo(int questionNo) {
		this.questionNo = questionNo;
	}
	public Timestamp getQuestionRegdate() {
		return questionRegdate;
	}
	public void setQuestionRegdate(Timestamp questionRegdate) {
		this.questionRegdate = questionRegdate;
	}
	public String getQuestionReturn() {
		return questionReturn;
	}
	public void setQuestionReturn(String questionReturn) {
		this.questionReturn = questionReturn;
	}
	public String getQuestionTitle() {
		return questionTitle;
	}
	public void setQuestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}
	public String getQuestionOnly() {
		return questionOnly;
	}
	public void setQuestionOnly(String questionOnly) {
		this.questionOnly = questionOnly;
	}
	public int getNewImgTerm() {
		return newImgTerm;
	}
	public void setNewImgTerm(int newImgTerm) {
		this.newImgTerm = newImgTerm;
	}
	
	@Override
	public String toString() {
		return "QnaVO [questionNo=" + questionNo + ", memberId=" + memberId + ", questionTitle=" + questionTitle
				+ ", questionContent=" + questionContent + ", questionRegdate=" + questionRegdate + ", questionReturn="
				+ questionReturn + ", questionOnly=" + questionOnly + ", newImgTerm=" + newImgTerm + "]";
	}
}
