package com.app.kaka.auction.model;

public class HighPriceVO {
	private String buyerMemberId;
	private int recordPrice;
	private int rank;
	private String auctionState;
	
	public String getAuctionState() {
		return auctionState;
	}
	public void setAuctionState(String auctionState) {
		this.auctionState = auctionState;
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
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	
	@Override
	public String toString() {
		return "HighPriceVO [buyerMemberId=" + buyerMemberId + ", recordPrice=" + recordPrice + ", rank=" + rank
				+ ", auctionState=" + auctionState + "]";
	}
}
