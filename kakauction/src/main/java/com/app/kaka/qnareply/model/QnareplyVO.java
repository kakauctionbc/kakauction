package com.app.kaka.qnareply.model;

import java.security.Timestamp;

public class QnareplyVO {
	private int answerNo;/* 답변번호 */
	private int questionNo;/* 질문번호 */
	private String memberId; /* 아이디 */
	private String answerContent;/* 답변내용 */
	private Timestamp answerTime;/* 답변시간 */
	
	public int getAnswerNo() {
		return answerNo;
	}
	public void setAnswerNo(int answerNo) {
		this.answerNo = answerNo;
	}
	public int getQuestionNo() {
		return questionNo;
	}
	public void setQuestionNo(int questionNo) {
		this.questionNo = questionNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getAnswerContent() {
		return answerContent;
	}
	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}
	public Timestamp getAnswerTime() {
		return answerTime;
	}
	public void setAnswerTime(Timestamp answerTime) {
		this.answerTime = answerTime;
	}
	
	@Override
	public String toString() {
		return "QnareplyVO [answerNo=" + answerNo + ", questionNo=" + questionNo + ", memberId=" + memberId
				+ ", answerContent=" + answerContent + ", answerTime=" + answerTime + "]";
	}
	
}
