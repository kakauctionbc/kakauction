package com.app.kaka.msg.model;

import java.sql.Timestamp;

public class MsgVO {
	private int msgNo;
	private int reportNo;
	private String reportMemberId;
	private int originNo;
	private int originType;
	private String msgContent;
	private Timestamp msgRegdate;
	private String msgTitle;
	private String msgConfirm;
	private String memberId;
	
	public int getMsgNo() {
		return msgNo;
	}
	public void setMsgNo(int msgNo) {
		this.msgNo = msgNo;
	}
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
	public String getMsgContent() {
		return msgContent;
	}
	public void setMsgContent(String msgContent) {
		this.msgContent = msgContent;
	}
	public Timestamp getMsgRegdate() {
		return msgRegdate;
	}
	public void setMsgRegdate(Timestamp msgRegdate) {
		this.msgRegdate = msgRegdate;
	}
	public String getMsgTitle() {
		return msgTitle;
	}
	public void setMsgTitle(String msgTitle) {
		this.msgTitle = msgTitle;
	}
	public String getMsgConfirm() {
		return msgConfirm;
	}
	public void setMsgConfirm(String msgConfirm) {
		this.msgConfirm = msgConfirm;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	@Override
	public String toString() {
		return "MsgVO [msgNo=" + msgNo + ", reportNo=" + reportNo + ", reportMemberId=" + reportMemberId + ", originNo="
				+ originNo + ", originType=" + originType + ", msgContent=" + msgContent + ", msgRegdate=" + msgRegdate
				+ ", msgTitle=" + msgTitle + ", msgConfirm=" + msgConfirm + ", memberId=" + memberId + "]";
	}
	
}
