package com.app.kaka.delivery.model;

import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class DeliveryDAOMybatis extends SqlSessionDaoSupport implements DeliveryDAO{

	private String namespace = "config.mybatis.mapper.oracle.delivery";
	
	@Override
	public Map<String, Object> selectARCView(int auctionNo) {
		return getSqlSession().selectOne(namespace+".selectARCView", auctionNo);
	}
	
}
