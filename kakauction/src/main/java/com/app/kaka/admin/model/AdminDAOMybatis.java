package com.app.kaka.admin.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAOMybatis extends SqlSessionDaoSupport implements AdminDAO{
	private String namespace = "config.mybatis.mapper.oracle.main";
	
	@Override
	public int selectCountCarApply() {
		return getSqlSession().selectOne(namespace+".selectCountCarApply");
	}

	@Override
	public int selectCountAuctionStart() {
		return getSqlSession().selectOne(namespace+".selectCountAuctionStart");
	}

	@Override
	public int selectCountAuctionEnd() {
		return getSqlSession().selectOne(namespace+".selectCountAuctionEnd");
	}

	@Override
	public int selectCountReportCar() {
		return getSqlSession().selectOne(namespace+".selectCountReportCar");
	}

	@Override
	public int selectCountReportNo() {
		return getSqlSession().selectOne(namespace+".selectCountReportNo");
	}

	@Override
	public int selectCountMemberJoin() {
		return getSqlSession().selectOne(namespace+".selectCountMemberJoin");
	}

	@Override
	public int selectCountMemberOut() {
		return getSqlSession().selectOne(namespace+".selectCountMemberOut");
	}

}
