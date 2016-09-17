package com.app.kaka.admin.member.model;

import java.util.List;

import com.app.kaka.member.model.MemberVO;

public class MemberListVO {
	
	private List<MemberVO> memberItems;

	public List<MemberVO> getMemberItems() {
		return memberItems;
	}

	public void setMemberItems(List<MemberVO> memberItems) {
		this.memberItems = memberItems;
	}

	@Override
	public String toString() {
		return "MemberListVO [memberItems=" + memberItems + "]";
	}
}
