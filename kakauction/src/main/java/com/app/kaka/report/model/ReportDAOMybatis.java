package com.app.kaka.report.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.app.kaka.auction.model.AuctionVO;

@Repository
public class ReportDAOMybatis extends SqlSessionDaoSupport implements ReportDAO{
	
	private final String namespace ="config.mybatis.mapper.oracle.report";
	
	@Override
	public AuctionVO selectAuctionInfo(int auctionNo) {
		return getSqlSession().selectOne(namespace+".selectAuctionInfo",auctionNo);
	}

}
