package com.app.kaka.freeboard.model;

import java.sql.Timestamp;

public class FreeboardVO {
	private int freeboardNo;
	private String memberId;
	private String freeboardTitle;
	private String freeboardContent;
	private Timestamp freeboardRregdate;
	private int freeboardReadCount;
	private int freeboardGroupno;
	private int freeboardStep;
	private int freeboardSortno;
	private String freeboardDelflag;
	private String freeboardFilename;
	private long freeboardFilesize;
	private String freeboardDowncount;
	private String freeboardOriginalname;
	
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
	public String getFreeboardTitle() {
		return freeboardTitle;
	}
	public void setFreeboardTitle(String freeboardTitle) {
		this.freeboardTitle = freeboardTitle;
	}
	public String getFreeboardContent() {
		return freeboardContent;
	}
	public void setFreeboardContent(String freeboardContent) {
		this.freeboardContent = freeboardContent;
	}
	public Timestamp getFreeboardRregdate() {
		return freeboardRregdate;
	}
	public void setFreeboardRregdate(Timestamp freeboardRregdate) {
		this.freeboardRregdate = freeboardRregdate;
	}
	public int getFreeboardReadCount() {
		return freeboardReadCount;
	}
	public void setFreeboardReadCount(int freeboardReadCount) {
		this.freeboardReadCount = freeboardReadCount;
	}
	public int getFreeboardGroupno() {
		return freeboardGroupno;
	}
	public void setFreeboardGroupno(int freeboardGroupno) {
		this.freeboardGroupno = freeboardGroupno;
	}
	public int getFreeboardStep() {
		return freeboardStep;
	}
	public void setFreeboardStep(int freeboardStep) {
		this.freeboardStep = freeboardStep;
	}
	public int getFreeboardSortno() {
		return freeboardSortno;
	}
	public void setFreeboardSortno(int freeboardSortno) {
		this.freeboardSortno = freeboardSortno;
	}
	public String getFreeboardDelflag() {
		return freeboardDelflag;
	}
	public void setFreeboardDelflag(String freeboardDelflag) {
		this.freeboardDelflag = freeboardDelflag;
	}
	public String getFreeboardFilename() {
		return freeboardFilename;
	}
	public void setFreeboardFilename(String freeboardFilename) {
		this.freeboardFilename = freeboardFilename;
	}
	public long getFreeboardFilesize() {
		return freeboardFilesize;
	}
	public void setFreeboardFilesize(long freeboardFilesize) {
		this.freeboardFilesize = freeboardFilesize;
	}
	public String getFreeboardDowncount() {
		return freeboardDowncount;
	}
	public void setFreeboardDowncount(String freeboardDowncount) {
		this.freeboardDowncount = freeboardDowncount;
	}
	public String getFreeboardOriginalname() {
		return freeboardOriginalname;
	}
	public void setFreeboardOriginalname(String freeboardOriginalname) {
		this.freeboardOriginalname = freeboardOriginalname;
	}
	
	@Override
	public String toString() {
		return "FreeboardVO [freeboardNo=" + freeboardNo + ", memberId=" + memberId + ", freeboardTitle="
				+ freeboardTitle + ", freeboardContent=" + freeboardContent + ", freeboardRregdate=" + freeboardRregdate
				+ ", freeboardReadCount=" + freeboardReadCount + ", freeboardGroupno=" + freeboardGroupno
				+ ", freeboardStep=" + freeboardStep + ", freeboardSortno=" + freeboardSortno + ", freeboardDelflag="
				+ freeboardDelflag + ", freeboardFilename=" + freeboardFilename + ", freeboardFilesize="
				+ freeboardFilesize + ", freeboardDowncount=" + freeboardDowncount + ", freeboardOriginalname="
				+ freeboardOriginalname + "]";
	}
}
