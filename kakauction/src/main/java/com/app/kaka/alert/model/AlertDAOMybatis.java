package com.app.kaka.alert.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class AlertDAOMybatis extends SqlSessionDaoSupport implements AlertDAO{

	private String namespace = "config.mybatis.mapper.oracle.alert";
	
	@Override
	public int sendDeferCar(AlertVO alertVo) {
		return getSqlSession().insert(namespace+".sendDeferCar", alertVo);
	}

	@Override
	public int sendDenyCar(AlertVO alertVo) {
		return getSqlSession().insert(namespace+".sendDenyCar", alertVo);
	}

	@Override
	public int newAlert(String memberId) {
		return getSqlSession().selectOne(namespace+".newAlert", memberId);
	}

	@Override
	public AlertVO selectByAlertNo(int alertNo) {
		return getSqlSession().selectOne(namespace+".selectByAlertNo", alertNo);
	}

}
