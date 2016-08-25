package com.app.kaka.record.model;

import java.sql.Timestamp;

public class RecordVO {
	private String auctionNo;
	private String memberId;
	private int recordPrice;
	private Timestamp recordRegdate;
	
	public String getAuctionNo() {
		return auctionNo;
	}
	public void setAuctionNo(String auctionNo) {
		this.auctionNo = auctionNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getRecordPrice() {
		return recordPrice;
	}
	public void setRecordPrice(int recordPrice) {
		this.recordPrice = recordPrice;
	}
	public Timestamp getRecordRegdate() {
		return recordRegdate;
	}
	public void setRecordRegdate(Timestamp recordRegdate) {
		this.recordRegdate = recordRegdate;
	}
	
	@Override
	public String toString() {
		return "RecordVO [auctionNo=" + auctionNo + ", memberId=" + memberId + ", recordPrice=" + recordPrice
				+ ", recordRegdate=" + recordRegdate + "]";
	}
}
