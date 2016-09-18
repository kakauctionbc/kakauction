package com.app.kaka.map.model;

public class MapVO {
	private int locNo;
	private String position;
	private String title;
	public int getLocNo() {
		return locNo;
	}
	public void setLocNo(int locNo) {
		this.locNo = locNo;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Override
	public String toString() {
		return "MapVO [locNo=" + locNo + ", position=" + position + ", title=" + title + "]";
	}
	
}
