package com.app.kaka.auction.model;

public class HighPriceVO {
	private String buyerMemberId;
	private int recordPrice;
	private int rank;
	
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
		return "HighPriceVO [buyerMemberId=" + buyerMemberId + ", recordPrice=" + recordPrice + ", rank=" + rank + "]";
	}
}
