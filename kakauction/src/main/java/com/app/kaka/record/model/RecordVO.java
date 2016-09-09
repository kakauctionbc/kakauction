package com.app.kaka.record.model;

import java.sql.Timestamp;

public class RecordVO {
	
	private int auctionNo;
	private int recordPrice;
	private Timestamp recordRegdate;
	private String carNum;
	private String sellerMemberId;
	private String buyerMemberId;
	
	public int getAuctionNo() {
		return auctionNo;
	}
	public void setAuctionNo(int auctionNo) {
		this.auctionNo = auctionNo;
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
	public String getCarNum() {
		return carNum;
	}
	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}
	public String getSellerMemberId() {
		return sellerMemberId;
	}
	public void setSellerMemberId(String sellerMemberId) {
		this.sellerMemberId = sellerMemberId;
	}
	public String getBuyerMemberId() {
		return buyerMemberId;
	}
	public void setBuyerMemberId(String buyerMemberId) {
		this.buyerMemberId = buyerMemberId;
	}
	
	@Override
	public String toString() {
		return "RecordVO [auctionNo=" + auctionNo + ", recordPrice=" + recordPrice + ", recordRegdate=" + recordRegdate
				+ ", carNum=" + carNum + ", sellerMemberId=" + sellerMemberId + ", buyerMemberId=" + buyerMemberId
				+ "]";
	}
	
}
