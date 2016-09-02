package com.app.kaka.member.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

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

}
