package com.app.kaka.common;

public class DateSearchVO extends SearchVO{
	private String startDay;  //시작일
	private String endDay; //종료일
	private String memberId; //고객 아이디
	
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
	
	public String getStartDay() {
		return startDay;
	}
	public void setStartDay(String startDay) {
		this.startDay = startDay;
	}
	public String getEndDay() {
		return endDay;
	}
	public void setEndDay(String endDay) {
		this.endDay = endDay;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	@Override
	public String toString() {
		return "DateSearchVO [startDay=" + startDay + ", endDay=" + endDay + ", memberId=" + memberId + ", year=" + year
				+ ", month=" + month + "]";
	}
}
