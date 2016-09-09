package com.app.kaka.op.model;

public class OpVO {
	private String carNum;
	private String sellerMemberId;
	private String opOut;
	private String opIn;
	private String opCon;
	private String opSafe;
	private String opAa;
	private String opTune;
	
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

	public String getOpOut() {
		return opOut;
	}

	public void setOpOut(String opOut) {
		this.opOut = opOut;
	}

	public String getOpIn() {
		return opIn;
	}

	public void setOpIn(String opIn) {
		this.opIn = opIn;
	}

	public String getOpCon() {
		return opCon;
	}

	public void setOpCon(String opCon) {
		this.opCon = opCon;
	}

	public String getOpSafe() {
		return opSafe;
	}

	public void setOpSafe(String opSafe) {
		this.opSafe = opSafe;
	}

	public String getOpAa() {
		return opAa;
	}

	public void setOpAa(String opAa) {
		this.opAa = opAa;
	}

	public String getOpTune() {
		return opTune;
	}

	public void setOpTune(String opTune) {
		this.opTune = opTune;
	}

	@Override
	public String toString() {
		return "OpVO [carNum=" + carNum + ", sellerMemberId=" + sellerMemberId + ", opOut=" + opOut + ", opIn=" + opIn
				+ ", opCon=" + opCon + ", opSafe=" + opSafe + ", opAa=" + opAa + ", opTune=" + opTune + "]";
	}
}
