package com.app.kaka.freeboardreport.model;

import java.security.Timestamp;

public class FreeboardreportVO {
	private String freeboardreportPerson;/* 신고자 */
	private int freeboardNo;/* 글번호 */
	private String freeboardreportContent;/* 신고내용 */
	private Timestamp freeboardreportRegdate;/* 신고시간 */
	private int freeboardreportCount;/* 신고횟수 */
	
	public String getFreeboardreportPerson() {
		return freeboardreportPerson;
	}
	public void setFreeboardreportPerson(String freeboardreportPerson) {
		this.freeboardreportPerson = freeboardreportPerson;
	}
	public int getFreeboardNo() {
		return freeboardNo;
	}
	public void setFreeboardNo(int freeboardNo) {
		this.freeboardNo = freeboardNo;
	}
	public String getFreeboardreportContent() {
		return freeboardreportContent;
	}
	public void setFreeboardreportContent(String freeboardreportContent) {
		this.freeboardreportContent = freeboardreportContent;
	}
	public Timestamp getFreeboardreportRegdate() {
		return freeboardreportRegdate;
	}
	public void setFreeboardreportRegdate(Timestamp freeboardreportRegdate) {
		this.freeboardreportRegdate = freeboardreportRegdate;
	}
	public int getFreeboardreportCount() {
		return freeboardreportCount;
	}
	public void setFreeboardreportCount(int freeboardreportCount) {
		this.freeboardreportCount = freeboardreportCount;
	}
	
	@Override
	public String toString() {
		return "FreeboardreportVO [freeboardreportPerson=" + freeboardreportPerson + ", freeboardNo=" + freeboardNo
				+ ", freeboardreportContent=" + freeboardreportContent + ", freeboardreportRegdate="
				+ freeboardreportRegdate + ", freeboardreportCount=" + freeboardreportCount + "]";
	}
}
