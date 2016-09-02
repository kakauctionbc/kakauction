package com.app.kaka.auction.model;

import java.sql.Timestamp;

public class AuctionVO {
	private String auctionNo;
	private String carNum;
	private String sellerMemberId;
	private String buyerMemberId;
	private int auctionPromp; /**즉구가*/
	private int auctionFirstprice; /** 초기입찰가 */
	private Timestamp auctionRegdate;
	private String auctionState;/** 경매상태 */
	private Timestamp auctionFinish;
	private Timestamp auctionOpentime;/** 개찰일시 */
	
	public String getAuctionNo() {
		return auctionNo;
	}
	public void setAuctionNo(String auctionNo) {
		this.auctionNo = auctionNo;
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
	public int getAuctionPromp() {
		return auctionPromp;
	}
	public void setAuctionPromp(int auctionPromp) {
		this.auctionPromp = auctionPromp;
	}
	public int getAuctionFirstprice() {
		return auctionFirstprice;
	}
	public void setAuctionFirstprice(int auctionFirstprice) {
		this.auctionFirstprice = auctionFirstprice;
	}
	public Timestamp getAuctionRegdate() {
		return auctionRegdate;
	}
	public void setAuctionRegdate(Timestamp auctionRegdate) {
		this.auctionRegdate = auctionRegdate;
	}
	public String getAuctionState() {
		return auctionState;
	}
	public void setAuctionState(String auctionState) {
		this.auctionState = auctionState;
	}
	public Timestamp getAuctionFinish() {
		return auctionFinish;
	}
	public void setAuctionFinish(Timestamp auctionFinish) {
		this.auctionFinish = auctionFinish;
	}
	public Timestamp getAuctionOpentime() {
		return auctionOpentime;
	}
	public void setAuctionOpentime(Timestamp auctionOpentime) {
		this.auctionOpentime = auctionOpentime;
	}
	
	@Override
	public String toString() {
		return "AuctionVO [auctionNo=" + auctionNo + ", carNum=" + carNum + ", sellerMemberId=" + sellerMemberId
				+ ", buyerMemberId=" + buyerMemberId + ", auctionPromp=" + auctionPromp + ", auctionFirstprice="
				+ auctionFirstprice + ", auctionRegdate=" + auctionRegdate + ", auctionState=" + auctionState
				+ ", auctionFinish=" + auctionFinish + ", auctionOpentime=" + auctionOpentime + "]";
	}
}
