package com.app.kaka.common;

public class detailSearcrVO extends SearchVO{
	//상세검색
	//1. 차종
	private String carSize1;
	private String carSize2;
	private String carSize3;
	
	
	
	
	private String year;
	private String month;
	
	//getter/setter
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	
	@Override
	public String toString() {
		return "detailSearcrVO [carSize1=" + carSize1 + ", carSize2=" + carSize2 + ", carSize3=" + carSize3 + ", year="
				+ year + ", month=" + month + "]";
	}
}
