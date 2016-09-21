package com.app.kaka.admin.visit.model;

import java.sql.Timestamp;

public class VisitVO {
	private String vDate;

	public String getvDate() {
		return vDate;
	}

	public void setvDate(String vDate) {
		this.vDate = vDate;
	}

	@Override
	public String toString() {
		return "VisitVO [vDate=" + vDate + "]";
	}
}
