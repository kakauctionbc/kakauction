package com.app.kaka.freereply.model;

import java.sql.Timestamp;

public class FreeReplyVO {
	private int freereplyNo;
	private int freeboardNo;
	private String  memberId;
	private String  freereplyContent;
	private Timestamp freereplyRegdate;
	private Timestamp freereplyGroupno;
	private Timestamp freereplyStep;
	private Timestamp freereplySortno;
	private Timestamp freereplyDelfalg;
	
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
	public Timestamp getFreereplyGroupno() {
		return freereplyGroupno;
	}
	public void setFreereplyGroupno(Timestamp freereplyGroupno) {
		this.freereplyGroupno = freereplyGroupno;
	}
	public Timestamp getFreereplyStep() {
		return freereplyStep;
	}
	public void setFreereplyStep(Timestamp freereplyStep) {
		this.freereplyStep = freereplyStep;
	}
	public Timestamp getFreereplySortno() {
		return freereplySortno;
	}
	public void setFreereplySortno(Timestamp freereplySortno) {
		this.freereplySortno = freereplySortno;
	}
	public Timestamp getFreereplyDelfalg() {
		return freereplyDelfalg;
	}
	public void setFreereplyDelfalg(Timestamp freereplyDelfalg) {
		this.freereplyDelfalg = freereplyDelfalg;
	}
	
	@Override
	public String toString() {
		return "FreeReplyVO [freereplyNo=" + freereplyNo + ", freeboardNo=" + freeboardNo + ", memberId=" + memberId
				+ ", freereplyContent=" + freereplyContent + ", freereplyRegdate=" + freereplyRegdate
				+ ", freereplyGroupno=" + freereplyGroupno + ", freereplyStep=" + freereplyStep + ", freereplySortno="
				+ freereplySortno + ", freereplyDelfalg=" + freereplyDelfalg + "]";
	}
}
