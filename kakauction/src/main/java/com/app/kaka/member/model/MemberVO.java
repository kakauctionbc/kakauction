package com.app.kaka.member.model;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

public class MemberVO {
	private String memberId;
	private String memberName;
	private String memberPwd;
	private String memberJumin;
	private String memberEmail;
	private String memberHp;
	private String memberGender;
	private String memberZipcode;
	private String memberAddr;
	private String memberAddr2;
	private int memberMileage;
	private String memberGrade;
	private Timestamp memberOutdate;
	private Timestamp memberRegdate;
	
	public Timestamp getMemberRegdate() {
		return memberRegdate;
	}
	public void setMemberRegdate(Timestamp memberRegdate) {
		this.memberRegdate = memberRegdate;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberPwd() {
		return memberPwd;
	}
	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}
	public String getMemberZipcode() {
		return memberZipcode;
	}
	public void setMemberZipcode(String memberZipcode) {
		this.memberZipcode = memberZipcode;
	}
	public String getMemberJumin() {
		return memberJumin;
	}
	public void setMemberJumin(String memberJumin) {
		this.memberJumin = memberJumin;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberHp() {
		return memberHp;
	}
	public void setMemberHp(String memberHp) {
		this.memberHp = memberHp;
	}
	public String getMemberGender() {
		return memberGender;
	}
	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}
	public String getMemberAddr() {
		return memberAddr;
	}
	public void setMemberAddr(String memberAddr) {
		this.memberAddr = memberAddr;
	}
	public String getMemberAddr2() {
		return memberAddr2;
	}
	public void setMemberAddr2(String memberAddr2) {
		this.memberAddr2 = memberAddr2;
	}
	public int getMemberMileage() {
		return memberMileage;
	}
	public void setMemberMileage(int memberMileage) {
		this.memberMileage = memberMileage;
	}
	public String getMemberGrade() {
		return memberGrade;
	}
	public void setMemberGrade(String memberGrade) {
		this.memberGrade = memberGrade;
	}
	public Timestamp getMemberOutdate() {
		return memberOutdate;
	}
	public void setMemberOutdate(Timestamp memberOutdate) {
		this.memberOutdate = memberOutdate;
	}
	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", memberName=" + memberName + ", memberPwd=" + memberPwd
				+ ", memberJumin=" + memberJumin + ", memberEmail=" + memberEmail + ", memberHp=" + memberHp
				+ ", memberGender=" + memberGender + ", memberZipcode=" + memberZipcode + ", memberAddr=" + memberAddr
				+ ", memberAddr2=" + memberAddr2 + ", memberMileage=" + memberMileage + ", memberGrade=" + memberGrade
				+ ", memberOutdate=" + memberOutdate + ", memberRegdate=" + memberRegdate + "]";
	}
	
	
}
