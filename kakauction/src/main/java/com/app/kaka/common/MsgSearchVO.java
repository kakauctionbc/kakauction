package com.app.kaka.common;

public class MsgSearchVO extends SearchVO{
	private String memberId;

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "MsgSearchVO [memberId=" + memberId + ", toString()=" + super.toString() + "]";
	}
}
