package com.app.kaka.auction.model;

import java.sql.Timestamp;

public class AuctionVO {
	private String auctionNo;
	private String memberId;
	private String carNum;
	private Timestamp auctionRegdate;
	private Timestamp auctionFinish;
	private int auctionFirstPrice;
	private int auctionPromp;
	
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
	public String getCarNum() {
		return carNum;
	}
	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}
	public Timestamp getAuctionRegdate() {
		return auctionRegdate;
	}
	public void setAuctionRegdate(Timestamp auctionRegdate) {
		this.auctionRegdate = auctionRegdate;
	}
	public Timestamp getAuctionFinish() {
		return auctionFinish;
	}
	public void setAuctionFinish(Timestamp auctionFinish) {
		this.auctionFinish = auctionFinish;
	}
	public int getAuctionFirstPrice() {
		return auctionFirstPrice;
	}
	public void setAuctionFirstPrice(int auctionFirstPrice) {
		this.auctionFirstPrice = auctionFirstPrice;
	}
	public int getAuctionPromp() {
		return auctionPromp;
	}
	public void setAuctionPromp(int auctionPromp) {
		this.auctionPromp = auctionPromp;
	}
	
	@Override
	public String toString() {
		return "AuctionVO [auctionNo=" + auctionNo + ", memberId=" + memberId + ", carNum=" + carNum
				+ ", auctionRegdate=" + auctionRegdate + ", auctionFinish=" + auctionFinish + ", auctionFirstPrice="
				+ auctionFirstPrice + ", auctionPromp=" + auctionPromp + "]";
	}
	
}
