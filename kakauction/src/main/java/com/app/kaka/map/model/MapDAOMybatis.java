package com.app.kaka.map.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class MapDAOMybatis extends SqlSessionDaoSupport implements MapDAO{
	private String namespace = "config.mybatis.mapper.oracle.map";

	@Override
	public List<MapVO> selectAllMarker() {
		return getSqlSession().selectList(namespace+".selectAllMarker");
	}
}
