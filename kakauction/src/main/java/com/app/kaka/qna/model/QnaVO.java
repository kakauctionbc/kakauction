package com.app.kaka.qna.model;

import java.sql.Timestamp;

public class QnaVO {
	private String memberId;
	private String questionContent;
	private int questionNo;
	private Timestamp questionRegdate;
	private String questionReturn;
	private String questionTitle;
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
	public int getNewImgTerm() {
		return newImgTerm;
	}
	public void setNewImgTerm(int newImgTerm) {
		this.newImgTerm = newImgTerm;
	}
	
	@Override
	public String toString() {
		return "QnaVO [memberId=" + memberId + ", questionContent=" + questionContent + ", questionNo=" + questionNo
				+ ", questionRegdate=" + questionRegdate + ", questionReturn=" + questionReturn + ", questionTitle="
				+ questionTitle + ", newImgTerm=" + newImgTerm + "]";
	}
}
