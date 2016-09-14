package com.app.kaka.report.model;

import java.sql.Timestamp;

public class ReportVO {
	private int reportNo;
	private String reportMemberId;
	private int originNo;
	private int originType;
	private String reportTitle;
	private String reportType;
	private String reportContent;
	private String reportResult;
	private Timestamp reportRegdate;
	public int getReportNo() {
		return reportNo;
	}
	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}
	public String getReportMemberId() {
		return reportMemberId;
	}
	public void setReportMemberId(String reportMemberId) {
		this.reportMemberId = reportMemberId;
	}
	public int getOriginNo() {
		return originNo;
	}
	public void setOriginNo(int originNo) {
		this.originNo = originNo;
	}
	public int getOriginType() {
		return originType;
	}
	public void setOriginType(int originType) {
		this.originType = originType;
	}
	public String getReportTitle() {
		return reportTitle;
	}
	public void setReportTitle(String reportTitle) {
		this.reportTitle = reportTitle;
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
	public Timestamp getReportRegdate() {
		return reportRegdate;
	}
	public void setReportRegdate(Timestamp reportRegdate) {
		this.reportRegdate = reportRegdate;
	}
	@Override
	public String toString() {
		return "ReportVO [reportNo=" + reportNo + ", reportMemberId=" + reportMemberId + ", originNo=" + originNo
				+ ", originType=" + originType + ", reportTitle=" + reportTitle + ", reportType=" + reportType
				+ ", reportContent=" + reportContent + ", reportResult=" + reportResult + ", reportRegdate="
				+ reportRegdate + "]";
	}
}
