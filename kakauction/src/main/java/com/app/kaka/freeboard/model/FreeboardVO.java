package com.app.kaka.freeboard.model;

import java.sql.Timestamp;

public class FreeboardVO {
	private int freeboardNo;
	private String memberId;
	private String freeboardTitle;
	private String freeboardContent;
	private Timestamp freeboardRegdate;
	private int freeboardReadCount;
	private int freeboardGroupno;
	private int freeboardStep;
	private int freeboardSortno;
	private int freeboardLike;
	private String freeboardDelflag;
	private String freeboardFilename;
	private long freeboardFilesize;
	private String freeboardDowncount;
	private String freeboardOriginalname;
	private int newImgTerm;
	
	public int getFreeboardNo() {
		return freeboardNo;
	}
	public void setFreeboardNo(int freeboardNo) {
		this.freeboardNo = freeboardNo;
	}
	public int getFreeboardLike() {
		return freeboardLike;
	}
	public void setFreeboardLike(int freeboardLike) {
		this.freeboardLike = freeboardLike;
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
	public Timestamp getFreeboardRegdate() {
		return freeboardRegdate;
	}
	public void setFreeboardRegdate(Timestamp freeboardRegdate) {
		this.freeboardRegdate = freeboardRegdate;
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
	public int getNewImgTerm() {
		return newImgTerm;
	}
	public void setNewImgTerm(int newImgTerm) {
		this.newImgTerm = newImgTerm;
	}
	@Override
	public String toString() {
		return "FreeboardVO [freeboardNo=" + freeboardNo + ", memberId=" + memberId + ", freeboardTitle="
				+ freeboardTitle + ", freeboardContent=" + freeboardContent + ", freeboardRegdate=" + freeboardRegdate
				+ ", freeboardReadCount=" + freeboardReadCount + ", freeboardGroupno=" + freeboardGroupno
				+ ", freeboardStep=" + freeboardStep + ", freeboardSortno=" + freeboardSortno + ", freeboardLike="
				+ freeboardLike + ", freeboardDelflag=" + freeboardDelflag + ", freeboardFilename=" + freeboardFilename
				+ ", freeboardFilesize=" + freeboardFilesize + ", freeboardDowncount=" + freeboardDowncount
				+ ", freeboardOriginalname=" + freeboardOriginalname + ", newImgTerm=" + newImgTerm + "]";
	}
}
