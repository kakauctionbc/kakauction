package com.app.kaka.admin.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class AdminHighDAOMybatis extends SqlSessionDaoSupport implements AdminHighDAO {
	private String namespace = "config.mybatis.mapper.oracle.admin";
	
	@Override
	public List<Map<String, Object>> selectAllauction() {
		return getSqlSession().selectList(namespace+".selectAllauction");
	}

	@Override
	public List<Map<String, Object>> selectAllLastBuyer() {
		return getSqlSession().selectList(namespace+".selectAllLastBuyer");
	}

	@Override
	public List<Map<String, Object>> selectAllTrade() {
		return getSqlSession().selectList(namespace+".selectAllTrade");
	}

	@Override
	public List<Map<String, Object>> selectAllsell() {
		return getSqlSession().selectList(namespace+".selectAllsell");
	}

	@Override
	public List<Map<String, Object>> selectAllsellFail() {
		return getSqlSession().selectList(namespace+".selectAllsellFail");
	}

	@Override
	public List<Map<String, Object>> selectAllRecord() {
		return getSqlSession().selectList(namespace+".selectAllRecord");
	}
}
