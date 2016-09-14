package com.app.kaka.freeboardreport.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.app.kaka.report.model.ReportVO;

@Repository
public class FreeboarddreportDAOMybatis extends SqlSessionDaoSupport implements FreeboardreportDAO {
	private String namespace="config.mybatis.mapper.oracle.freeboard";

	@Override
	public int insertReport(ReportVO reportVo) {
		return getSqlSession().insert(namespace+".insertReport", reportVo);
	}
}
