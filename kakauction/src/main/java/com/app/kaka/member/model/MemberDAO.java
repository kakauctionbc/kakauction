package com.app.kaka.member.model;


public interface MemberDAO {
	public int insertMember(MemberVO memberVo);
	public int checkMemberId(String memberId);
	public String loginCheck(MemberVO memberVo);
	public MemberVO selectMemberByUserid(String memberId);
	public int updateMember(MemberVO memberVo);
	public int memberOut(String memberId);
}
