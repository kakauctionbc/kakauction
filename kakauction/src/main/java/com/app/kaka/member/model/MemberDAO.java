package com.app.kaka.member.model;

import java.util.List;

import com.app.kaka.common.SearchVO;

public interface MemberDAO {
	public int insertMember(MemberVO memberVo);
	public int checkMemberId(String memberId);
	public int checkMemberJumin(String memberJumin);
	public String loginCheck(MemberVO memberVo);
	public MemberVO selectMemberByUserid(String memberId);
	public int updateMember(MemberVO memberVo);
	public int memberOut(String memberId);
	public int updateMemberPwd(MemberVO memberVo);
	// 얘는 엑셀
	public List<MemberVO> selectAllMember();
	// 멤버리스트
	public List<MemberVO> selectAllMember2(SearchVO searchVo);
	public int memberAllCount2(SearchVO searchVo);
}
