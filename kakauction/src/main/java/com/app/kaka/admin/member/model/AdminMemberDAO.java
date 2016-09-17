package com.app.kaka.admin.member.model;

import java.util.List;
import java.util.Map;

import com.app.kaka.member.model.MemberVO;

public interface AdminMemberDAO {
	public int updateGrade(MemberVO memberVo);	
	
	public int blackListMember(MemberVO memberVo);
	public int selectMemberCount(String memberGrade);
	
	public int updateMemberGrade(MemberVO vo);
	public int adminOutMember(String memberId);
}
