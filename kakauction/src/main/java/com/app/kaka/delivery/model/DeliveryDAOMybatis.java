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
	
	//구매 확정 후
	@Override
	public int updateLastBuyerYn(Map<Object, Object> map) {
		return getSqlSession().update(namespace+".updateLastBuyerYn", map);
	}

	@Override
	public int insertTrade(Map<Object, Object> map) {
		return getSqlSession().insert(namespace+".insertTrade", map);
	}

	@Override
	public int insertDelivery(Map<Object, Object> data) {
		return getSqlSession().insert(namespace+".insertDelivery", data);
	}

	@Override
	public int updateBuyer(Map<Object, Object> data) {
		return getSqlSession().update(namespace+".updateBuyer", data);
	}

	
}
