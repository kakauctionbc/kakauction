package com.app.kaka.car.model;

public class CarVO {
	private String carNum;
	private String memberId;
	private String carPrice;
	private String carLoc;
	private String carBirth;
	private String carDist;
	private String carGas;
	private String carCc;
	private String carAm;
	private String carColor;
	private String carAcci;
	
	public CarVO() {

	}

	public CarVO(String carNum, String memberId, String carPrice, String carLoc, String carBirth, String carDist,
			String carGas, String carCc, String carAm, String carColor, String carAcci) {
		super();
		this.carNum = carNum;
		this.memberId = memberId;
		this.carPrice = carPrice;
		this.carLoc = carLoc;
		this.carBirth = carBirth;
		this.carDist = carDist;
		this.carGas = carGas;
		this.carCc = carCc;
		this.carAm = carAm;
		this.carColor = carColor;
		this.carAcci = carAcci;
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

	@Override
	public String toString() {
		return "CarVO [carNum=" + carNum + ", memberId=" + memberId + ", carPrice=" + carPrice + ", carLoc=" + carLoc
				+ ", carBirth=" + carBirth + ", carDist=" + carDist + ", carGas=" + carGas + ", carCc=" + carCc
				+ ", carAm=" + carAm + ", carColor=" + carColor + ", carAcci=" + carAcci + "]";
	}
}
