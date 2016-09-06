package com.app.kaka.auction.model;

import java.sql.Timestamp;

public class AuctionCarVO {
	
	private String carNum;
	private String carCompany;
	private String carPrice;
	private String carLoc;
	private String carBirth;
	private String carModel;
	private String carSize;
	private String carDist;
	private String carGas;
	private String carCc;
	private String carColor;
	private String carAcci;
	private Timestamp carRegdate;
	private String carAuctionYn;
	private int carFailSell;
	private String memberName;
	private String memberAddr;
	private String memberAddr2;
	private String memberHp;
	private String memberGrade;
	private String memberId;
	
	private int auctionNoYear;
	private int auctionNoCar;
	private int auctionNo;
	
	private String auctionState;
	private String carAm;
	
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
	public int getAuctionNo() {
		return auctionNo;
	}
	public void setAuctionNo(int auctionNo) {
		this.auctionNo = auctionNo;
	}
	public String getCarColor() {
		return carColor;
	}
	public void setCarColor(String carColor) {
		this.carColor = carColor;
	}
	public String getCarAcci() {
		return carAcci;
	}
	public void setCarAcci(String carAcci) {
		this.carAcci = carAcci;
	}
	public Timestamp getCarRegdate() {
		return carRegdate;
	}
	public void setCarRegdate(Timestamp carRegdate) {
		this.carRegdate = carRegdate;
	}
	public String getCarAuctionYn() {
		return carAuctionYn;
	}
	public void setCarAuctionYn(String carAuctionYn) {
		this.carAuctionYn = carAuctionYn;
	}
	public int getCarFailSell() {
		return carFailSell;
	}
	public void setCarFailSell(int carFailSell) {
		this.carFailSell = carFailSell;
	}
	public String getCarModel() {
		return carModel;
	}
	public void setCarModel(String carModel) {
		this.carModel = carModel;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberAddr() {
		return memberAddr;
	}
	public void setMemberAddr(String memberAddr) {
		this.memberAddr = memberAddr;
	}
	public String getMemberAddr2() {
		return memberAddr2;
	}
	public void setMemberAddr2(String memberAddr2) {
		this.memberAddr2 = memberAddr2;
	}
	public String getCarLoc() {
		return carLoc;
	}
	public void setCarLoc(String carLoc) {
		this.carLoc = carLoc;
	}
	public String getCarCompany() {
		return carCompany;
	}
	public void setCarCompany(String carCompany) {
		this.carCompany = carCompany;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberHp() {
		return memberHp;
	}
	public void setMemberHp(String memberHp) {
		this.memberHp = memberHp;
	}
	public String getAuctionState() {
		return auctionState;
	}
	public void setAuctionState(String auctionState) {
		this.auctionState = auctionState;
	}
	public String getMemberGrade() {
		return memberGrade;
	}
	public void setMemberGrade(String memberGrade) {
		this.memberGrade = memberGrade;
	}
	public String getCarPrice() {
		return carPrice;
	}
	public void setCarPrice(String carPrice) {
		this.carPrice = carPrice;
	}
	public String getCarNum() {
		return carNum;
	}
	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}
	public String getCarBirth() {
		return carBirth;
	}
	public void setCarBirth(String carBirth) {
		this.carBirth = carBirth;
	}
	public String getCarGas() {
		return carGas;
	}
	public void setCarGas(String carGas) {
		this.carGas = carGas;
	}
	public String getCarAm() {
		return carAm;
	}
	public void setCarAm(String carAm) {
		this.carAm = carAm;
	}
	public String getCarDist() {
		return carDist;
	}
	public void setCarDist(String carDist) {
		this.carDist = carDist;
	}
	public String getCarCc() {
		return carCc;
	}
	public void setCarCc(String carCc) {
		this.carCc = carCc;
	}
	public String getCarSize() {
		return carSize;
	}
	public void setCarSize(String carSize) {
		this.carSize = carSize;
	}
	
	@Override
	public String toString() {
		return "AuctionCarVO [carNum=" + carNum + ", carCompany=" + carCompany + ", carPrice=" + carPrice + ", carLoc="
				+ carLoc + ", carBirth=" + carBirth + ", carModel=" + carModel + ", carSize=" + carSize + ", carDist="
				+ carDist + ", carGas=" + carGas + ", carCc=" + carCc + ", carColor=" + carColor + ", carAcci="
				+ carAcci + ", carRegdate=" + carRegdate + ", carAuctionYn=" + carAuctionYn + ", carFailSell="
				+ carFailSell + ", memberName=" + memberName + ", memberAddr=" + memberAddr + ", memberAddr2="
				+ memberAddr2 + ", memberHp=" + memberHp + ", memberGrade=" + memberGrade + ", memberId=" + memberId
				+ ", auctionNoYear=" + auctionNoYear + ", auctionNoCar=" + auctionNoCar + ", auctionNo=" + auctionNo
				+ ", auctionState=" + auctionState + ", carAm=" + carAm + "]";
	}
}
