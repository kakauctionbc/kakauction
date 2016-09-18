package com.app.kaka.admin.member.model;

import java.util.List;
import java.util.Map;

import com.app.kaka.member.model.MemberVO;

public interface AdminMemberService {
	public int blackListMember(List<MemberVO> memList);
	
	public int updateMemberGrade(List<MemberVO> memList, String eventName);
	public int adminOutMember(List<MemberVO> memList);
}
