package com.app.kaka.admin.member.model;

import java.util.Arrays;

import com.app.kaka.member.model.MemberVO;

public class MemberBean extends MemberVO {
	//jsp에서 선택한 값을 넣는 객체
	private String[] memberMileages;
	private String[] memberGrades;
	private String[] memberGenders;
	
	//xml에서 셀렉트한 값을 넣는 객체는 부모꺼
	public String[] getMemberMileages() {
		return memberMileages;
	}
	public void setMemberMileages(String[] memberMileages) {
		this.memberMileages = memberMileages;
	}
	public String[] getMemberGrades() {
		return memberGrades;
	}
	public void setMemberGrades(String[] memberGrades) {
		this.memberGrades = memberGrades;
	}
	public String[] getMemberGenders() {
		return memberGenders;
	}
	public void setMemberGenders(String[] memberGenders) {
		this.memberGenders = memberGenders;
	}
	
	@Override
	public String toString() {
		return "MemberBean [memberMileages=" + Arrays.toString(memberMileages) + ", memberGrades="
				+ Arrays.toString(memberGrades) + ", memberGenders=" + Arrays.toString(memberGenders) + "]";
	}
}