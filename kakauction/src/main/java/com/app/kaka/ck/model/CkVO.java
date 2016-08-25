package com.app.kaka.ck.model;

import java.sql.Timestamp;

public class CkVO {
	private String carNum;
	private Timestamp ckRegister;
	private String ckDist;
	private String ckIll;
	private String ckAcc;
	private String ckAvail;
	
	public String getCarNum() {
		return carNum;
	}

	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}

	public Timestamp getCkRegister() {
		return ckRegister;
	}

	public void setCkRegister(Timestamp ckRegister) {
		this.ckRegister = ckRegister;
	}

	public String getCkDist() {
		return ckDist;
	}

	public void setCkDist(String ckDist) {
		this.ckDist = ckDist;
	}

	public String getCkIll() {
		return ckIll;
	}

	public void setCkIll(String ckIll) {
		this.ckIll = ckIll;
	}

	public String getCkAcc() {
		return ckAcc;
	}

	public void setCkAcc(String ckAcc) {
		this.ckAcc = ckAcc;
	}

	public String getCkAvail() {
		return ckAvail;
	}

	public void setCkAvail(String ckAvail) {
		this.ckAvail = ckAvail;
	}

	@Override
	public String toString() {
		return "CheckVO [carNum=" + carNum + ", ckRegister=" + ckRegister + ", ckDist=" + ckDist + ", ckIll=" + ckIll
				+ ", ckAcc=" + ckAcc + ", ckAvail=" + ckAvail + "]";
	}
}
