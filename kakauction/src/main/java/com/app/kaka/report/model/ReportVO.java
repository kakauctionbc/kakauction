package com.app.kaka.report.model;

public class ReportVO {
	private int reportNo;
	private String buyerMemberId;
	private String auctionNo;
	private String reportCarinfo;
	private String reportType;
	private String reportContent;
	private String reportResult;
	
	public int getReportNo() {
		return reportNo;
	}
	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}
	public String getBuyerMemberId() {
		return buyerMemberId;
	}
	public void setBuyerMemberId(String buyerMemberId) {
		this.buyerMemberId = buyerMemberId;
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
	public String getReportResult() {
		return reportResult;
	}
	public void setReportResult(String reportResult) {
		this.reportResult = reportResult;
	}
	
	@Override
	public String toString() {
		return "ReportVO [reportNo=" + reportNo + ", buyerMemberId=" + buyerMemberId + ", auctionNo=" + auctionNo
				+ ", reportCarinfo=" + reportCarinfo + ", reportType=" + reportType + ", reportContent=" + reportContent
				+ ", reportResult=" + reportResult + "]";
	}
}
