package com.app.kaka.freeboardreport.model;

import java.sql.Timestamp;

public class FreeboardreportVO {
	private int reportNo;
	private int freeboardNo;
	private String memberId;
	private String freereportTitle;
	private String freereportType;
	private String freereportContent;
	private String freereportResult;
	private Timestamp freereportRegdate;
	
	public int getReportNo() {
		return reportNo;
	}
	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
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
	public String getFreereportTitle() {
		return freereportTitle;
	}
	public void setFreereportTitle(String freereportTitle) {
		this.freereportTitle = freereportTitle;
	}
	public String getFreereportType() {
		return freereportType;
	}
	public void setFreereportType(String freereportType) {
		this.freereportType = freereportType;
	}
	public String getFreereportContent() {
		return freereportContent;
	}
	public void setFreereportContent(String freereportContent) {
		this.freereportContent = freereportContent;
	}
	public String getFreereportResult() {
		return freereportResult;
	}
	public void setFreereportResult(String freereportResult) {
		this.freereportResult = freereportResult;
	}
	public Timestamp getFreereportRegdate() {
		return freereportRegdate;
	}
	public void setFreereportRegdate(Timestamp freereportRegdate) {
		this.freereportRegdate = freereportRegdate;
	}
	
	@Override
	public String toString() {
		return "FreeboardreportVO [reportNo=" + reportNo + ", freeboardNo=" + freeboardNo + ", memberId=" + memberId
				+ ", freereportTitle=" + freereportTitle + ", freereportType=" + freereportType + ", freereportContent="
				+ freereportContent + ", freereportResult=" + freereportResult + ", freereportRegdate="
				+ freereportRegdate + "]";
	}
}
