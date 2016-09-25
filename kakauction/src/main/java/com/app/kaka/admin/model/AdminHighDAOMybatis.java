package com.app.kaka.admin.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class AdminHighDAOMybatis extends SqlSessionDaoSupport implements AdminHighDAO {
	private String namespace = "config.mybatis.mapper.oracle.admin";
	
	@Override
	public List<String> selectAllauction() {
		return getSqlSession().selectList(namespace+".selectAllauction");
	}

	@Override
	public List<String> selectAllLastBuyer() {
		return getSqlSession().selectList(namespace+".selectAllLastBuyer");
	}

	@Override
	public List<String> selectAllTrade() {
		return getSqlSession().selectList(namespace+".selectAllTrade");
	}

	@Override
	public List<String> selectAllsell() {
		return getSqlSession().selectList(namespace+".selectAllsell");
	}

	@Override
	public List<String> selectAllsellFail() {
		return getSqlSession().selectList(namespace+".selectAllsellFail");
	}

	@Override
	public List<String> selectAllRecord() {
		return getSqlSession().selectList(namespace+".selectAllRecord");
	}
}
