package com.app.kaka.admin.visit.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class VisiteDAO extends SqlSessionDaoSupport {
	private String namespace = "config.mybatis.mapper.oracle.visit";

	public int insertCount() {
		return getSqlSession().insert(namespace+".insertCount");
	}

	public int totalCount() {
		return getSqlSession().selectOne(namespace+".totalCount");
	}

	public int todayCount() {
		return getSqlSession().selectOne(namespace+".todayCount");
	}

	public int outCount() {
		return getSqlSession().selectOne(namespace+".outCount");
	}
}
