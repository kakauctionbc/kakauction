package com.app.kaka.freeboard.model;

import java.sql.Timestamp;

public class FreeboardVO {
	private int freeboardNo;/** 글번호 */
	private String memberId;/** 아이디 */
	private String freeboardTitle;/** 제목 */
	private String freeboardContent;/** 내용 */
	private Timestamp freeboardRegdate;/** 작성일 */
	private int freeboardReadcount;/** 조회수 */
	private int freeboardGroupno;/** 그룹번호 */
	private int freeboardStep;/** 스텝 */
	private int freeboardSortno;/** 소트 */
	private String freeboardDelflag;/** 삭제여부 */
	private String freeboardFilename;/** 파일명 */
	private long freeboardFilesize;/** 파일크기 */
	private int freeboardDowncount;/** 다운로드수 */
	private String freeboardOriginalname;/** 파일원본이름 */
	private int freeboardLike;/** 추천수 */
	private int freeboardReadCount;
	
	private int newImgTerm;
	
	public int getFreeboardNo() {
		return freeboardNo;
	}
	public void setFreeboardNo(int freeboardNo) {
		this.freeboardNo = freeboardNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getFreeboardTitle() {
		return freeboardTitle;
	}
	public void setFreeboardTitle(String freeboardTitle) {
		this.freeboardTitle = freeboardTitle;
	}
	public String getFreeboardContent() {
		return freeboardContent;
	}
	public void setFreeboardContent(String freeboardContent) {
		this.freeboardContent = freeboardContent;
	}
	public Timestamp getFreeboardRegdate() {
		return freeboardRegdate;
	}
	public void setFreeboardRegdate(Timestamp freeboardRegdate) {
		this.freeboardRegdate = freeboardRegdate;
	}
	public int getFreeboardReadcount() {
		return freeboardReadcount;
	}
	public void setFreeboardReadcount(int freeboardReadcount) {
		this.freeboardReadcount = freeboardReadcount;
	}
	public int getFreeboardGroupno() {
		return freeboardGroupno;
	}
	public void setFreeboardGroupno(int freeboardGroupno) {
		this.freeboardGroupno = freeboardGroupno;
	}
	public int getFreeboardStep() {
		return freeboardStep;
	}
	public void setFreeboardStep(int freeboardStep) {
		this.freeboardStep = freeboardStep;
	}
	public int getFreeboardSortno() {
		return freeboardSortno;
	}
	public void setFreeboardSortno(int freeboardSortno) {
		this.freeboardSortno = freeboardSortno;
	}
	public String getFreeboardDelflag() {
		return freeboardDelflag;
	}
	public void setFreeboardDelflag(String freeboardDelflag) {
		this.freeboardDelflag = freeboardDelflag;
	}
	public String getFreeboardFilename() {
		return freeboardFilename;
	}
	public void setFreeboardFilename(String freeboardFilename) {
		this.freeboardFilename = freeboardFilename;
	}
	public long getFreeboardFilesize() {
		return freeboardFilesize;
	}
	public void setFreeboardFilesize(long freeboardFilesize) {
		this.freeboardFilesize = freeboardFilesize;
	}
	public int getFreeboardDowncount() {
		return freeboardDowncount;
	}
	public void setFreeboardDowncount(int freeboardDowncount) {
		this.freeboardDowncount = freeboardDowncount;
	}
	public String getFreeboardOriginalname() {
		return freeboardOriginalname;
	}
	public void setFreeboardOriginalname(String freeboardOriginalname) {
		this.freeboardOriginalname = freeboardOriginalname;
	}
	public int getFreeboardLike() {
		return freeboardLike;
	}
	public void setFreeboardLike(int freeboardLike) {
		this.freeboardLike = freeboardLike;
	}
	public int getNewImgTerm() {
		return newImgTerm;
	}
	public void setNewImgTerm(int newImgTerm) {
		this.newImgTerm = newImgTerm;
	}
	public int getFreeboardReadCount() {
		return freeboardReadCount;
	}
	public void setFreeboardReadCount(int freeboardReadCount) {
		this.freeboardReadCount = freeboardReadCount;
	}
	@Override
	public String toString() {
		return "FreeboardVO [freeboardNo=" + freeboardNo + ", memberId=" + memberId + ", freeboardTitle="
				+ freeboardTitle + ", freeboardContent=" + freeboardContent + ", freeboardRegdate=" + freeboardRegdate
				+ ", freeboardReadcount=" + freeboardReadcount + ", freeboardGroupno=" + freeboardGroupno
				+ ", freeboardStep=" + freeboardStep + ", freeboardSortno=" + freeboardSortno + ", freeboardDelflag="
				+ freeboardDelflag + ", freeboardFilename=" + freeboardFilename + ", freeboardFilesize="
				+ freeboardFilesize + ", freeboardDowncount=" + freeboardDowncount + ", freeboardOriginalname="
				+ freeboardOriginalname + ", freeboardLike=" + freeboardLike + ", freeboardReadCount="
				+ freeboardReadCount + ", newImgTerm=" + newImgTerm + "]";
	}
	
	
}
