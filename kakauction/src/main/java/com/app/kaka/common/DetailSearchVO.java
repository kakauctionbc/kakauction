package com.app.kaka.common;

import java.util.Arrays;

public class DetailSearchVO extends SearchVO{
	//상세검색
	//1. 차종
	private String[] carSizes;
	private String[] carGases;
	private String birth1;
	private String birth2;
	private String priceS;
	private String priceD;
	private String carAms;
	
	private String year;
	private String month;
	
	public String[] getCarSizes() {
		return carSizes;
	}
	public void setCarSizes(String[] carSizes) {
		this.carSizes = carSizes;
	}
	public String[] getCarGases() {
		return carGases;
	}
	public void setCarGases(String[] carGases) {
		this.carGases = carGases;
	}
	public String getBirth1() {
		return birth1;
	}
	public void setBirth1(String birth1) {
		this.birth1 = birth1;
	}
	public String getBirth2() {
		return birth2;
	}
	public void setBirth2(String birth2) {
		this.birth2 = birth2;
	}
	public String getPriceS() {
		return priceS;
	}
	public void setPriceS(String priceS) {
		this.priceS = priceS;
	}
	public String getPriceD() {
		return priceD;
	}
	public void setPriceD(String priceD) {
		this.priceD = priceD;
	}
	public String getCarAms() {
		return carAms;
	}
	public void setCarAms(String carAms) {
		this.carAms = carAms;
	}
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
		return "DetailSearchVO [carSizes=" + Arrays.toString(carSizes) + ", carGases=" + Arrays.toString(carGases)
				+ ", birth1=" + birth1 + ", birth2=" + birth2 + ", priceS=" + priceS + ", priceD=" + priceD
				+ ", carAms=" + carAms + ", year=" + year + ", month=" + month + ", toString()=" + super.toString()
				+ "]";
	}
	
}
