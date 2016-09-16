package com.app.kaka.delivery.model;

import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class DeliveryDAOMybatis extends SqlSessionDaoSupport implements DeliveryDAO{

	private String namespace = "config.mybatis.mapper.oracle.delivery";
	
	@Override
	public Map<String, Object> selectARCView(Map<String, Object> myMap) {
		return getSqlSession().selectOne(namespace+".selectARCView", myMap);
	}

	@Override
	public int insertTrade(Map<String, Object> map) {
		return getSqlSession().insert(namespace+".insertTrade", map);
	}
	
}
