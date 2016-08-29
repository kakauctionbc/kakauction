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
}
