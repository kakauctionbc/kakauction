package com.app.kaka.qnareply.model;

import java.security.Timestamp;

public class QnareplyVO {
	private int ansNo;/* 답변번호 */
	private int questionNo;/* 질문번호 */
	private String memberId; /* 아이디 */
	private String ansContent;/* 답변내용 */
	private Timestamp ansTime;/* 답변시간 */
	
	public int getAnsNo() {
		return ansNo;
	}
	public void setAnsNo(int ansNo) {
		this.ansNo = ansNo;
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
	public String getAnsContent() {
		return ansContent;
	}
	public void setAnsContent(String ansContent) {
		this.ansContent = ansContent;
	}
	public Timestamp getAnsTime() {
		return ansTime;
	}
	public void setAnsTime(Timestamp ansTime) {
		this.ansTime = ansTime;
	}
	
	@Override
	public String toString() {
		return "QnareplyVO [ansNo=" + ansNo + ", questionNo=" + questionNo + ", memberId=" + memberId + ", ansContent="
				+ ansContent + ", ansTime=" + ansTime + "]";
	}
}
