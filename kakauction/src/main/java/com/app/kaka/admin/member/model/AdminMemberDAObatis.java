package com.app.kaka.admin.member.model;

import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.app.kaka.member.model.MemberVO;

@Repository
public class AdminMemberDAObatis extends SqlSessionDaoSupport implements AdminMemberDAO {
	private String namespace="config.mybatis.mapper.oracle.member";

	@Override
	public int updateGrade(MemberVO memberVo) {
		return getSqlSession().update(namespace+".gradeUpdate", memberVo);
	}

	@Override
	public int updateMemberGrade(MemberVO vo) {
		return getSqlSession().update(namespace+".gradeUpdate", vo);
	}

	@Override
	public int selectMemberCount(String memberGrade) {
		return getSqlSession().selectOne(namespace+".selectMemberCount", memberGrade);
	}

	@Override
	public int blackListMember(MemberVO memberVo) {
		return getSqlSession().update(namespace+".gradeUpdate", memberVo);
	}
}
