package com.app.kaka.record.model;

import java.sql.Timestamp;

public class RecordVO {
	
	private int lbNo;
	
	private int recordNo;
	private String buyerMemberId;
	private int recordPrice;
	private int auctionNo;
	private Timestamp recordRegdate;
	private String carNum;
	private String sellerMemberId;
	
	public int getLbNo() {
		return lbNo;
	}
	public void setLbNo(int lbNo) {
		this.lbNo = lbNo;
	}
	
	public int getRecordNo() {
		return recordNo;
	}
	public void setRecordNo(int recordNo) {
		this.recordNo = recordNo;
	}
	public String getBuyerMemberId() {
		return buyerMemberId;
	}
	public void setBuyerMemberId(String buyerMemberId) {
		this.buyerMemberId = buyerMemberId;
	}
	public int getRecordPrice() {
		return recordPrice;
	}
	public void setRecordPrice(int recordPrice) {
		this.recordPrice = recordPrice;
	}
	public int getAuctionNo() {
		return auctionNo;
	}
	public void setAuctionNo(int auctionNo) {
		this.auctionNo = auctionNo;
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
	
	@Override
	public String toString() {
		return "RecordVO [lbNo=" + lbNo + ", recordNo=" + recordNo + ", buyerMemberId=" + buyerMemberId
				+ ", recordPrice=" + recordPrice + ", auctionNo=" + auctionNo + ", recordRegdate=" + recordRegdate
				+ ", carNum=" + carNum + ", sellerMemberId=" + sellerMemberId + "]";
	}
}
