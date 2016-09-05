package com.app.kaka.car.model;

public class CarVO {
	private String carNum;
	private String memberId;
	/** 공고기관 */
	private String carCompany; 
	private String carPrice;
	private String carLoc;
	private String carBirth;
	private String carSize;
	private String carDist;
	private String carGas;
	private String carCc;
	private String carAm;
	private String carColor;
	private String carAcci;
	private String carRegdate;
	private String carAuctionYn;
	private int carFailSell;
	private String carModel;
	
	public CarVO() {
		
	}

	public CarVO(String carNum, String memberId, String carCompany, String carPrice, String carLoc, String carBirth,
			String carSize, String carDist, String carGas, String carCc, String carAm, String carColor, String carAcci,
			String carRegdate, String carAuctionYn, int carFailSell, String carModel) {
		super();
		this.carNum = carNum;
		this.memberId = memberId;
		this.carCompany = carCompany;
		this.carPrice = carPrice;
		this.carLoc = carLoc;
		this.carBirth = carBirth;
		this.carSize = carSize;
		this.carDist = carDist;
		this.carGas = carGas;
		this.carCc = carCc;
		this.carAm = carAm;
		this.carColor = carColor;
		this.carAcci = carAcci;
		this.carRegdate = carRegdate;
		this.carAuctionYn = carAuctionYn;
		this.carFailSell = carFailSell;
		this.carModel = carModel;
	}

	public String getCarNum() {
		return carNum;
	}

	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getCarCompany() {
		return carCompany;
	}

	public void setCarCompany(String carCompany) {
		this.carCompany = carCompany;
	}

	public String getCarPrice() {
		return carPrice;
	}

	public void setCarPrice(String carPrice) {
		this.carPrice = carPrice;
	}

	public String getCarLoc() {
		return carLoc;
	}

	public void setCarLoc(String carLoc) {
		this.carLoc = carLoc;
	}

	public String getCarBirth() {
		return carBirth;
	}

	public void setCarBirth(String carBirth) {
		this.carBirth = carBirth;
	}

	public String getCarSize() {
		return carSize;
	}

	public void setCarSize(String carSize) {
		this.carSize = carSize;
	}

	public String getCarDist() {
		return carDist;
	}

	public void setCarDist(String carDist) {
		this.carDist = carDist;
	}

	public String getCarGas() {
		return carGas;
	}

	public void setCarGas(String carGas) {
		this.carGas = carGas;
	}

	public String getCarCc() {
		return carCc;
	}

	public void setCarCc(String carCc) {
		this.carCc = carCc;
	}

	public String getCarAm() {
		return carAm;
	}

	public void setCarAm(String carAm) {
		this.carAm = carAm;
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

	public String getCarRegdate() {
		return carRegdate;
	}

	public void setCarRegdate(String carRegdate) {
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

	@Override
	public String toString() {
		return "CarVO [carNum=" + carNum + ", memberId=" + memberId + ", carCompany=" + carCompany + ", carPrice="
				+ carPrice + ", carLoc=" + carLoc + ", carBirth=" + carBirth + ", carSize=" + carSize + ", carDist="
				+ carDist + ", carGas=" + carGas + ", carCc=" + carCc + ", carAm=" + carAm + ", carColor=" + carColor
				+ ", carAcci=" + carAcci + ", carRegdate=" + carRegdate + ", carAuctionYn=" + carAuctionYn
				+ ", carFailSell=" + carFailSell + ", carModel=" + carModel + "]";
	}
	
}
