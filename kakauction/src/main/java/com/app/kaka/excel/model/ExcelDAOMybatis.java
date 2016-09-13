package com.app.kaka.excel.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.app.kaka.car.model.CarVO;
import com.app.kaka.member.model.MemberVO;

@Repository
public class ExcelDAOMybatis extends SqlSessionDaoSupport implements ExcelDAO  {
	private String namespace = "config.mybatis.mapper.oracle.member";
	private String namespace2 = "config.mybatis.mapper.oracle.excel";

	@Override
	public void excelAdd(Map<String, Object> map) {
		getSqlSession().insert(namespace+".addExcel", map);
	}

	@Override
	public List<CarVO> excelCarList() {
		return getSqlSession().selectList(namespace2+".selectAllCar");
	}
}
