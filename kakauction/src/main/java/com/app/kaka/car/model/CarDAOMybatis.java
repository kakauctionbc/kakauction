package com.app.kaka.car.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class CarDAOMybatis extends SqlSessionDaoSupport implements CarDAO{
	
	private String namespace = "config.mybatis.mapper.oracle.car";
	
	@Override
	public int insertCar(CarVO carVo) {
		return getSqlSession().insert(namespace+".insertCar", carVo);
	}

}
