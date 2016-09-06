package com.app.kaka.email.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.app.kaka.member.model.MemberVO;

@Repository
public class EmailDAOMybatis extends SqlSessionDaoSupport implements EmailDAO {
	private String namespace = "config.mybatis.mapper.oracle.member";

	@Override
	public String getPwd(MemberVO memberVo) {
		return getSqlSession().selectOne(namespace+".getPwd", memberVo);
	}

	@Override
	public int updatePwd(MemberVO memberVo) {
		return getSqlSession().update(namespace+".updatePwd", memberVo);	
	}
	
	/*@Override
	public String getPwd(Map<String, Object> paramMap) {
		return getSqlSession().selectOne(namespace+".getPwd", paramMap);
	}*/
	
}
