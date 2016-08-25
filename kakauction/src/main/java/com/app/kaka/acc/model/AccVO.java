package com.app.kaka.acc.model;

import java.sql.Timestamp;

public class AccVO {
	private String carNum;
	private Timestamp accInfo;
	private String accUserch;
	private String accSpecial;
	private String accMy;
	private String accOther;
	
	public AccVO() {

	}

	public AccVO(String carNum, Timestamp accInfo, String accUserch, String accSpecial, String accMy,
			String accOther) {
		super();
		this.carNum = carNum;
		this.accInfo = accInfo;
		this.accUserch = accUserch;
		this.accSpecial = accSpecial;
		this.accMy = accMy;
		this.accOther = accOther;
	}

	public String getCarNum() {
		return carNum;
	}

	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}

	public Timestamp getAccInfo() {
		return accInfo;
	}

	public void setAccInfo(Timestamp accInfo) {
		this.accInfo = accInfo;
	}

	public String getAccUserch() {
		return accUserch;
	}

	public void setAccUserch(String accUserch) {
		this.accUserch = accUserch;
	}

	public String getAccSpecial() {
		return accSpecial;
	}

	public void setAccSpecial(String accSpecial) {
		this.accSpecial = accSpecial;
	}

	public String getAccMy() {
		return accMy;
	}

	public void setAccMy(String accMy) {
		this.accMy = accMy;
	}

	public String getAccOther() {
		return accOther;
	}

	public void setAccOther(String accOther) {
		this.accOther = accOther;
	}

	@Override
	public String toString() {
		return "AccidentVO [carNum=" + carNum + ", accInfo=" + accInfo + ", accUserch=" + accUserch + ", accSpecial="
				+ accSpecial + ", accMy=" + accMy + ", accOther=" + accOther + "]";
	}
}
