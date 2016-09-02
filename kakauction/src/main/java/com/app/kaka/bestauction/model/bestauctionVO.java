package com.app.kaka.bestauction.model;

public class bestauctionVO {
	private int bestauctionNo;/* 베스트경매번호 */
	private String bestauctionKind;/* 베스트종류 */
	private String auctionNo;/* 물건관리번호 */
	
	public int getBestauctionNo() {
		return bestauctionNo;
	}
	public void setBestauctionNo(int bestauctionNo) {
		this.bestauctionNo = bestauctionNo;
	}
	public String getBestauctionKind() {
		return bestauctionKind;
	}
	public void setBestauctionKind(String bestauctionKind) {
		this.bestauctionKind = bestauctionKind;
	}
	public String getAuctionNo() {
		return auctionNo;
	}
	public void setAuctionNo(String auctionNo) {
		this.auctionNo = auctionNo;
	}
	
	@Override
	public String toString() {
		return "bestauctionVO [bestauctionNo=" + bestauctionNo + ", bestauctionKind=" + bestauctionKind + ", auctionNo="
				+ auctionNo + "]";
	}
	
	
}
