package com.app.kaka.report.model;

public class ReportVO {
	private int reportNo;
	private String memberId;
	private String auctionNo;
	private String reportCarinfo;
	private String reportType;
	private String reportContent;
	
	public int getReportNo() {
		return reportNo;
	}
	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getAuctionNo() {
		return auctionNo;
	}
	public void setAuctionNo(String auctionNo) {
		this.auctionNo = auctionNo;
	}
	public String getReportCarinfo() {
		return reportCarinfo;
	}
	public void setReportCarinfo(String reportCarinfo) {
		this.reportCarinfo = reportCarinfo;
	}
	public String getReportType() {
		return reportType;
	}
	public void setReportType(String reportType) {
		this.reportType = reportType;
	}
	public String getReportContent() {
		return reportContent;
	}
	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}
	@Override
	public String toString() {
		return "ReportVO [reportNo=" + reportNo + ", memberId=" + memberId + ", auctionNo=" + auctionNo
				+ ", reportCarinfo=" + reportCarinfo + ", reportType=" + reportType + ", reportContent=" + reportContent
				+ "]";
	}
}
