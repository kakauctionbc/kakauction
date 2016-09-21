package com.app.kaka.common;

import com.app.kaka.member.model.MemberVO;

public class MemDeSearchVO extends SearchVO{
	private MemberVO memberVo;
	
	private String memberGrade;

	private String memberGender;
	
	public String getMemberGender() {
		return memberGender;
	}

	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}

	public String getMemberGrade() {
		return memberGrade;
	}

	public void setMemberGrade(String memberGrade) {
		this.memberGrade = memberGrade;
	}

	public MemberVO getMemberVo() {
		return memberVo;
	}

	public void setMemberVo(MemberVO memberVo) {
		this.memberVo = memberVo;
	}

	@Override
	public String toString() {
		return "MemDeSearchVO [memberVo=" + memberVo + ", memberGrade=" + memberGrade + ", memberGender=" + memberGender
				+ ", toString()=" + super.toString() + "]";
	}
}
