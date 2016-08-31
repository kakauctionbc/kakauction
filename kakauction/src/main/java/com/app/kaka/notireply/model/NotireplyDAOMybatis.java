package com.app.kaka.notireply.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class NotireplyDAOMybatis extends SqlSessionDaoSupport implements NotireplyDAO{
	
	private String namespace = "config.mybatis.mapper.oracle.notireply";

	@Override
	public int insertComment(NotireplyVO vo) {
		return getSqlSession().insert(namespace+".insertComment", vo);
	}
}
