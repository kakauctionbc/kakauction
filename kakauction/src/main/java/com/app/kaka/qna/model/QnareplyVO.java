package com.app.kaka.qna.model;

import java.sql.Timestamp;

public class QnareplyVO extends QnaVO{
	private String ansContent;
	private Timestamp ansTime;
	
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
		return "QnareplyVO [ansContent=" + ansContent + ", ansTime=" + ansTime + ", toString()=" + super.toString()
				+ "]";
	}
}
