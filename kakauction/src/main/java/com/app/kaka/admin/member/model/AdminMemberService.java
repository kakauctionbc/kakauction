package com.app.kaka.admin.member.model;

import java.util.List;
import java.util.Map;

import com.app.kaka.common.SearchVO;
import com.app.kaka.member.model.MemberVO;

public interface AdminMemberService {
	//블랙리스트
	public int blackListMember(List<MemberVO> memList);
	//등급변경
	public int updateMemberGrade(List<MemberVO> memList, String eventName);
	//삭제
	public int adminOutMember(List<MemberVO> memList);
	//경매참여목록
	public List<Map<String, Object>> selectAuctionMember(SearchVO searchVo);
	public int AuctionMemberCount(SearchVO searchVo);
}
