package com.app.kaka.buyer.model;

public class BuyerVO {
	private String memberId;
	private String buyerLoc;
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getBuyerLoc() {
		return buyerLoc;
	}
	public void setBuyerLoc(String buyerLoc) {
		this.buyerLoc = buyerLoc;
	}
	
	@Override
	public String toString() {
		return "BuyerVO [memberId=" + memberId + ", buyerLoc=" + buyerLoc + "]";
	}
}
