package com.app.kaka.alert.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.app.kaka.car.model.CarVO;

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

	@Override
	public int updateAlertConfirm(int alertNo) {
		return getSqlSession().update(namespace+".updateAlertConfirm", alertNo);
	}

	@Override
	public int sendAgainAuctionAlert(AlertVO alertVo) {
		return getSqlSession().insert(namespace+".sendAgainAuction", alertVo);
	}

}
