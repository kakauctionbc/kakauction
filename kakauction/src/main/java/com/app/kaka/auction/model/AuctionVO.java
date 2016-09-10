package com.app.kaka.auction.model;

import java.sql.Timestamp;

public class AuctionVO {
	private String carNum;
	private String sellerMemberId;
	private int auctionNoYear;
	private int auctionNoCar;
	private int auctionNo;
	private int auctionPromp; /**즉구가*/
	private int auctionFirstprice; /** 초기입찰가 */
	private Timestamp auctionRegdate;
	private String auctionState;/** 경매상태 */
	private Timestamp auctionFinish;
	private Timestamp auctionOpentime;/** 개찰일시 */
	private int auctionReadCount;
	private int auctionFinishTime;
	
	public int getAuctionFinishTime() {
		return auctionFinishTime;
	}
	public void setAuctionFinishTime(int auctionFinishTime) {
		this.auctionFinishTime = auctionFinishTime;
	}
	public int getAuctionReadCount() {
		return auctionReadCount;
	}
	public void setAuctionReadCount(int auctionReadCount) {
		this.auctionReadCount = auctionReadCount;
	}
	public int getAuctionNo() {
		return auctionNo;
	}
	public int getAuctionNoYear() {
		return auctionNoYear;
	}
	public void setAuctionNoYear(int auctionNoYear) {
		this.auctionNoYear = auctionNoYear;
	}
	public int getAuctionNoCar() {
		return auctionNoCar;
	}
	public void setAuctionNoCar(int auctionNoCar) {
		this.auctionNoCar = auctionNoCar;
	}
	public void setAuctionNo(int auctionNo) {
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
		return "AuctionVO [carNum=" + carNum + ", sellerMemberId=" + sellerMemberId + ", auctionNoYear=" + auctionNoYear
				+ ", auctionNoCar=" + auctionNoCar + ", auctionNo=" + auctionNo + ", auctionPromp=" + auctionPromp
				+ ", auctionFirstprice=" + auctionFirstprice + ", auctionRegdate=" + auctionRegdate + ", auctionState="
				+ auctionState + ", auctionFinish=" + auctionFinish + ", auctionOpentime=" + auctionOpentime
				+ ", auctionReadCount=" + auctionReadCount + ", auctionFinishTime=" + auctionFinishTime + "]";
	}
	
}
