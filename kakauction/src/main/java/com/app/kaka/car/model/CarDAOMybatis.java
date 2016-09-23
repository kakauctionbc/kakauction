package com.app.kaka.car.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class CarDAOMybatis extends SqlSessionDaoSupport implements CarDAO{
	
	private String namespace = "config.mybatis.mapper.oracle.car";
	
	@Override
	public int insertCar(CarVO carVo) {
		return getSqlSession().insert(namespace+".insertCar", carVo);
	}

	@Override
	public CarVO carDetail(String carNum) {
		return getSqlSession().selectOne(namespace+".selectByCarNum", carNum);
	}

	@Override
	public List<Map<String, Object>> selectCarPictureByMemberId(String memberId) {
		return getSqlSession().selectList(namespace+".selectCarPictureByMemberId", memberId);
	}

	@Override
	public int upMemeberGrade(String memberId) {
		return getSqlSession().update(namespace+".upMemeberGrade", memberId);
	}

	@Override
	public String selectMemberGrade(String memberId) {
		return getSqlSession().selectOne(namespace+".selectMemberGrade", memberId);
	}

	@Override
	public List<CarVO> selectDeferListByMemberId(String memberId) {
		return getSqlSession().selectList(namespace+".selectDeferListByMemberId", memberId);
	}

	@Override
	public Map<String, Object> selectDeferCarDetail(CarVO carVo) {
		return getSqlSession().selectOne(namespace+".selectDeferCarDetail", carVo);
	}

	@Override
	public int editCar(CarVO carVo) {
		return getSqlSession().update(namespace+".editCar", carVo);
	}

	@Override
	public int againAuction(CarVO carVo) {
		return getSqlSession().update(namespace+".againAuction", carVo);
	}
	
	

}
