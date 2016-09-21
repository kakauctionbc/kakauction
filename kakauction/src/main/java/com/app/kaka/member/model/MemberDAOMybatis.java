package com.app.kaka.member.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.app.kaka.common.MemDeSearchVO;
import com.app.kaka.common.SearchVO;

@Repository
public class MemberDAOMybatis extends SqlSessionDaoSupport implements MemberDAO {
	private String namespace = "config.mybatis.mapper.oracle.member";
	
	@Override
	public int insertMember(MemberVO memberVo) {
		return getSqlSession().insert(namespace+".insertMember", memberVo);
	}

	@Override
	public int checkMemberId(String memberId) {
		return getSqlSession().selectOne(namespace+".selectCountUserid", memberId);
	}
	
	@Override
	public int checkMemberJumin(String memberJumin) {
		return getSqlSession().selectOne(namespace+".selectCountJumin", memberJumin);
	}


	@Override
	public String loginCheck(MemberVO memberVo) {
		return getSqlSession().selectOne(namespace+".selectPwd", memberVo);
	}
	
	@Override
	public MemberVO selectMemberByUserid(String memberId) {
		return getSqlSession().selectOne(namespace+".selectMemberByUserid", memberId);
	}

	@Override
	public int updateMember(MemberVO memberVo) {
		return getSqlSession().update(namespace+".updateMember", memberVo);
	}

	@Override
	public int memberOut(String memberId) {
		return getSqlSession().delete(namespace+".outMember", memberId);
	}

	@Override
	public int updateMemberPwd(MemberVO memberVo) {
		return getSqlSession().update(namespace+".updatePwd", memberVo);
	}

	@Override
	public List<MemberVO> selectAllMember() {
		return getSqlSession().selectList(namespace+".selectAllMember");
	}

	@Override
	public List<MemberVO> selectAllMember2(SearchVO searchVo) {
		return getSqlSession().selectList(namespace+".selectAllMember2", searchVo);
	}

	@Override
	public int memberAllCount2(SearchVO searchVo) {
		return getSqlSession().selectOne(namespace+".selectAllMemberCount", searchVo);
	}

	@Override
	public String whereMemberGrade(String memberId) {
		return getSqlSession().selectOne(namespace+".whereMemberGrade", memberId);
	}

	@Override
	public int selectAllMemberCount2(MemDeSearchVO searchVo) {
		return getSqlSession().selectOne(namespace+".selectAllMemberCount2", searchVo);
	}
}
