package com.app.kaka.admin.member.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.app.kaka.common.MemDeSearchVO;
import com.app.kaka.common.SearchVO;
import com.app.kaka.member.model.MemberVO;

@Repository
public class AdminMemberDAObatis extends SqlSessionDaoSupport implements AdminMemberDAO {
	private String namespace="config.mybatis.mapper.oracle.member";

	@Override
	public int updateMemberGrade(MemberVO vo) {
		return getSqlSession().update(namespace+".gradeUpdateMember", vo);
	}

	@Override
	public int selectMemberCount(String memberGrade) {
		return getSqlSession().selectOne(namespace+".selectMemberCount", memberGrade);
	}

	@Override
	public int blackListMember(MemberVO memberVo) {
		return getSqlSession().update(namespace+".gradeUpdate", memberVo);
	}

	@Override
	public int adminOutMember(String memberId) {
		return getSqlSession().update(namespace+".outMember", memberId);
	}

	@Override
	public List<Map<String, Object>> selectAuctionMember(SearchVO searchVo) {
		return getSqlSession().selectList(namespace+".selectAuctionMember",searchVo);
	}

	@Override
	public int AuctionMemberCount(SearchVO searchVo) {
		return getSqlSession().selectOne(namespace+".AuctionMemberCount", searchVo);
	}

	@Override
	public List<MemberVO> selectPdByConditionForeach(MemDeSearchVO vo) {
		return getSqlSession().selectList(namespace+".selectSearchMember",vo);
	}
}
