package com.app.kaka.member.model;

import java.util.List;

public interface MemberDAO {
	public int insertMember(MemberVO memberVo);
	public int checkMemberId(String memberId);
	public int checkMemberJumin(String memberJumin);
	public String loginCheck(MemberVO memberVo);
	public MemberVO selectMemberByUserid(String memberId);
	public int updateMember(MemberVO memberVo);
	public int memberOut(String memberId);
	public int updateMemberPwd(MemberVO memberVo);
	public List<MemberVO> selectAllMember();
}
