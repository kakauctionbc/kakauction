package com.app.kaka.freereply.model;

import java.sql.Timestamp;

public class FreeReplyVO {
	private int freereplyNo;
	private int freeboardNo;
	private String  memberId;
	private String  freereplyContent;
	private Timestamp freereplyRegdate;
	private int freereplyGroupno;
	private int freereplyStep;
	private int freereplySortno;
	private String freereplyDelflag;
	
	public int getFreereplyNo() {
		return freereplyNo;
	}
	public void setFreereplyNo(int freereplyNo) {
		this.freereplyNo = freereplyNo;
	}
	public int getFreeboardNo() {
		return freeboardNo;
	}
	public void setFreeboardNo(int freeboardNo) {
		this.freeboardNo = freeboardNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getFreereplyContent() {
		return freereplyContent;
	}
	public void setFreereplyContent(String freereplyContent) {
		this.freereplyContent = freereplyContent;
	}
	public Timestamp getFreereplyRegdate() {
		return freereplyRegdate;
	}
	public void setFreereplyRegdate(Timestamp freereplyRegdate) {
		this.freereplyRegdate = freereplyRegdate;
	}
	public int getFreereplyGroupno() {
		return freereplyGroupno;
	}
	public void setFreereplyGroupno(int freereplyGroupno) {
		this.freereplyGroupno = freereplyGroupno;
	}
	public int getFreereplyStep() {
		return freereplyStep;
	}
	public void setFreereplyStep(int freereplyStep) {
		this.freereplyStep = freereplyStep;
	}
	public int getFreereplySortno() {
		return freereplySortno;
	}
	public void setFreereplySortno(int freereplySortno) {
		this.freereplySortno = freereplySortno;
	}
	
	public String getFreereplyDelflag() {
		return freereplyDelflag;
	}
	public void setFreereplyDelflag(String freereplyDelflag) {
		this.freereplyDelflag = freereplyDelflag;
	}
	@Override
	public String toString() {
		return "FreeReplyVO [freereplyNo=" + freereplyNo + ", freeboardNo=" + freeboardNo + ", memberId=" + memberId
				+ ", freereplyContent=" + freereplyContent + ", freereplyRegdate=" + freereplyRegdate
				+ ", freereplyGroupno=" + freereplyGroupno + ", freereplyStep=" + freereplyStep + ", freereplySortno="
				+ freereplySortno + ", freereplyDelflag=" + freereplyDelflag + "]";
	}
	
	
}
