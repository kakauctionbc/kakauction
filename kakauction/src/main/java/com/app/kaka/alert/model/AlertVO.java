package com.app.kaka.alert.model;

import java.sql.Timestamp;

public class AlertVO {
	private int alertNo;
	private String carNum;
	private String SellerMemberId;
	private String alertType;
	private String alertContent;
	private Timestamp alertRegdate;
	private String alertTitle;
	private int auctionNo;
	
	public int getAlertNo() {
		return alertNo;
	}
	public void setAlertNo(int alertNo) {
		this.alertNo = alertNo;
	}
	public String getCarNum() {
		return carNum;
	}
	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}
	public String getSellerMemberId() {
		return SellerMemberId;
	}
	public void setSellerMemberId(String sellerMemberId) {
		SellerMemberId = sellerMemberId;
	}
	public String getAlertType() {
		return alertType;
	}
	public void setAlertType(String alertType) {
		this.alertType = alertType;
	}
	public String getAlertContent() {
		return alertContent;
	}
	public void setAlertContent(String alertContent) {
		this.alertContent = alertContent;
	}
	public Timestamp getAlertRegdate() {
		return alertRegdate;
	}
	public void setAlertRegdate(Timestamp alertRegdate) {
		this.alertRegdate = alertRegdate;
	}
	public String getAlertTitle() {
		return alertTitle;
	}
	public void setAlertTitle(String alertTitle) {
		this.alertTitle = alertTitle;
	}
	public int getAuctionNo() {
		return auctionNo;
	}
	public void setAuctionNo(int auctionNo) {
		this.auctionNo = auctionNo;
	}
	
	@Override
	public String toString() {
		return "AlertVO [alertNo=" + alertNo + ", carNum=" + carNum + ", SellerMemberId=" + SellerMemberId
				+ ", alertType=" + alertType + ", alertContent=" + alertContent + ", alertRegdate=" + alertRegdate
				+ ", alertTitle=" + alertTitle + ", auctionNo=" + auctionNo + "]";
	}
	
}
