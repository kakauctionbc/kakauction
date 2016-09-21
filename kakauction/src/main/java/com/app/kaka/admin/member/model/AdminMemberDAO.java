package com.app.kaka.admin.member.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.mapping.ResultSetType;
import org.springframework.context.annotation.Bean;

import com.app.kaka.common.MemDeSearchVO;
import com.app.kaka.common.SearchVO;
import com.app.kaka.member.model.MemberVO;

public interface AdminMemberDAO {
	public int blackListMember(MemberVO memberVo);
	public int selectMemberCount(String memberGrade);
	public int updateMemberGrade(MemberVO vo);
	public int adminOutMember(String memberId);
	public List<Map<String, Object>> selectAuctionMember(SearchVO searchVo);
	public int AuctionMemberCount(SearchVO searchVo);
	
	//상세검색
	public List<MemberVO> selectPdByConditionForeach(MemDeSearchVO vo);
}
