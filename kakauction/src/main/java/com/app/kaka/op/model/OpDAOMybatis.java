package com.app.kaka.op.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class OpDAOMybatis extends SqlSessionDaoSupport implements OpDAO {
	private String namespace = "config.mybatis.mapper.oracle.op";

	@Override
	public int insertOp(OpVO opVo) {
		return getSqlSession().insert(namespace+".insertOp", opVo);
	}

	@Override
	public OpVO opDetail(String carNum) {
		return getSqlSession().selectOne(namespace+".selectByCarNum", carNum);
	}
	
	
}
