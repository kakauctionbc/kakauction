package com.app.kaka.admin.freeboard.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class AdminFreeboardDAOMybatis extends SqlSessionDaoSupport implements AdminFreeboardDAO {
	private String namespace = "config.mybatis.mapper.oracle.freeboard";
	
	@Override
	public int deleteFreeboardMuti(int freeboardNo) {
		return  getSqlSession().delete(namespace+".deleteFreeboardMuti",freeboardNo);
	}
}
