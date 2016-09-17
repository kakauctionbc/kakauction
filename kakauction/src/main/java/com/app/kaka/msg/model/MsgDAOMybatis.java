package com.app.kaka.msg.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class MsgDAOMybatis extends SqlSessionDaoSupport implements MsgDAO{

	private String namespace = "config.mybatis.mapper.oracle.msg";
	
	@Override
	public int sendMessage(MsgVO msgVo) {
		return getSqlSession().insert(namespace=".insertMsg", msgVo);
	}
	
}
