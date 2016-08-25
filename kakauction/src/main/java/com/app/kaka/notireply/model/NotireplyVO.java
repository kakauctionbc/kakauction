package com.app.kaka.notireply.model;

import java.sql.Timestamp;

public class NotireplyVO {
	private int notireplyNo;
	private int noticeNo;
	private String memberId;
	private String notireplyContent;
	private Timestamp notireplyRegdate;
	private int notireplyGroupno;
	private int notireplyStep;
	private int notireplySortno;
	private String notireplyDelflag;
	
	public int getNotireplyNo() {
		return notireplyNo;
	}
	public void setNotireplyNo(int notireplyNo) {
		this.notireplyNo = notireplyNo;
	}
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getNotireplyContent() {
		return notireplyContent;
	}
	public void setNotireplyContent(String notireplyContent) {
		this.notireplyContent = notireplyContent;
	}
	public Timestamp getNotireplyRegdate() {
		return notireplyRegdate;
	}
	public void setNotireplyRegdate(Timestamp notireplyRegdate) {
		this.notireplyRegdate = notireplyRegdate;
	}
	public int getNotireplyGroupno() {
		return notireplyGroupno;
	}
	public void setNotireplyGroupno(int notireplyGroupno) {
		this.notireplyGroupno = notireplyGroupno;
	}
	public int getNotireplyStep() {
		return notireplyStep;
	}
	public void setNotireplyStep(int notireplyStep) {
		this.notireplyStep = notireplyStep;
	}
	public int getNotireplySortno() {
		return notireplySortno;
	}
	public void setNotireplySortno(int notireplySortno) {
		this.notireplySortno = notireplySortno;
	}
	public String getNotireplyDelflag() {
		return notireplyDelflag;
	}
	public void setNotireplyDelflag(String notireplyDelflag) {
		this.notireplyDelflag = notireplyDelflag;
	}
	
	@Override
	public String toString() {
		return "NotireplyVO [notireplyNo=" + notireplyNo + ", noticeNo=" + noticeNo + ", memberId=" + memberId
				+ ", notireplyContent=" + notireplyContent + ", notireplyRegdate=" + notireplyRegdate
				+ ", notireplyGroupno=" + notireplyGroupno + ", notireplyStep=" + notireplyStep + ", notireplySortno="
				+ notireplySortno + ", notireplyDelflag=" + notireplyDelflag + "]";
	}

	
}
