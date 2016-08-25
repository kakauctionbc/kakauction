package com.app.kaka.notice.model;

import java.sql.Timestamp;

public class NoticeVO {
	private int noticeNo;
	private String memberId;
	private String noticeTitle;
	private String noticeContent;
	private Timestamp noticeRegdate;
	private int noticeReadCount;
	private int noticeGroupno;
	private int noticeStep;
	private int noticeSort;
	private String noticeDelflag;
	private String noticeFilename;
	private long noticeFilesize;
	private int noticeDowncount;
	private String noticeOriginalname;
	
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
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public Timestamp getNoticeRegdate() {
		return noticeRegdate;
	}
	public void setNoticeRegdate(Timestamp noticeRegdate) {
		this.noticeRegdate = noticeRegdate;
	}
	public int getNoticeReadCount() {
		return noticeReadCount;
	}
	public void setNoticeReadCount(int noticeReadCount) {
		this.noticeReadCount = noticeReadCount;
	}
	public int getNoticeGroupno() {
		return noticeGroupno;
	}
	public void setNoticeGroupno(int noticeGroupno) {
		this.noticeGroupno = noticeGroupno;
	}
	public int getNoticeStep() {
		return noticeStep;
	}
	public void setNoticeStep(int noticeStep) {
		this.noticeStep = noticeStep;
	}
	public int getNoticeSort() {
		return noticeSort;
	}
	public void setNoticeSort(int noticeSort) {
		this.noticeSort = noticeSort;
	}
	public String getNoticeDelflag() {
		return noticeDelflag;
	}
	public void setNoticeDelflag(String noticeDelflag) {
		this.noticeDelflag = noticeDelflag;
	}
	public String getNoticeFilename() {
		return noticeFilename;
	}
	public void setNoticeFilename(String noticeFilename) {
		this.noticeFilename = noticeFilename;
	}
	public long getNoticeFilesize() {
		return noticeFilesize;
	}
	public void setNoticeFilesize(long noticeFilesize) {
		this.noticeFilesize = noticeFilesize;
	}
	public int getNoticeDowncount() {
		return noticeDowncount;
	}
	public void setNoticeDowncount(int noticeDowncount) {
		this.noticeDowncount = noticeDowncount;
	}
	public String getNoticeOriginalname() {
		return noticeOriginalname;
	}
	public void setNoticeOriginalname(String noticeOriginalname) {
		this.noticeOriginalname = noticeOriginalname;
	}
	
	@Override
	public String toString() {
		return "NoticeVO [noticeNo=" + noticeNo + ", memberId=" + memberId + ", noticeTitle=" + noticeTitle
				+ ", noticeContent=" + noticeContent + ", noticeRegdate=" + noticeRegdate + ", noticeReadCount="
				+ noticeReadCount + ", noticeGroupno=" + noticeGroupno + ", noticeStep=" + noticeStep + ", noticeSort="
				+ noticeSort + ", noticeDelflag=" + noticeDelflag + ", noticeFilename=" + noticeFilename
				+ ", noticeFilesize=" + noticeFilesize + ", noticeDowncount=" + noticeDowncount
				+ ", noticeOriginalname=" + noticeOriginalname + "]";
	}
}
