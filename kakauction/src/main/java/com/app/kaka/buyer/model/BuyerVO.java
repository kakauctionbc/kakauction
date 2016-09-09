package com.app.kaka.buyer.model;

public class BuyerVO {
	private String buyerMemberId;
	private String buyerLoc;
	private int auctionNo;
	
	
	public String getBuyerMemberId() {
		return buyerMemberId;
	}
	public void setBuyerMemberId(String buyerMemberId) {
		this.buyerMemberId = buyerMemberId;
	}
	public int getAuctionNo() {
		return auctionNo;
	}
	public void setAuctionNo(int auctionNo) {
		this.auctionNo = auctionNo;
	}
	public String getBuyerLoc() {
		return buyerLoc;
	}
	public void setBuyerLoc(String buyerLoc) {
		this.buyerLoc = buyerLoc;
	}
	
	@Override
	public String toString() {
		return "BuyerVO [buyerMemberId=" + buyerMemberId + ", buyerLoc=" + buyerLoc + ", auctionNo=" + auctionNo + "]";
	}
}
