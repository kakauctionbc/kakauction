package com.app.kaka.msg.model;

import java.sql.Timestamp;

public class MsgVO {
	private int msgNo;
	private int reportNo;
	private String buyerMemberId;
	private int freeboardNo;
	private String memberId;
	private String msgContent;
	private Timestamp msgRegdate;
	private String msgTitle;
	private String msgConfirm;
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
	public String getBuyerMemberId() {
		return buyerMemberId;
	}
	public void setBuyerMemberId(String buyerMemberId) {
		this.buyerMemberId = buyerMemberId;
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

	@Override
	public String toString() {
		return "MsgVO [msgNo=" + msgNo + ", reportNo=" + reportNo + ", buyerMemberId=" + buyerMemberId
				+ ", freeboardNo=" + freeboardNo + ", memberId=" + memberId + ", msgContent=" + msgContent
				+ ", msgRegdate=" + msgRegdate + ", msgTitle=" + msgTitle + ", msgConfirm=" + msgConfirm + "]";
	}
}
