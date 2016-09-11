package com.app.kaka.report.model;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.app.kaka.auction.model.AuctionVO;
import com.app.kaka.common.SearchVO;

@Repository
public class ReportDAOMybatis extends SqlSessionDaoSupport implements ReportDAO{
	
	private final String namespace ="config.mybatis.mapper.oracle.report";
	
	@Override
	public AuctionVO selectAuctionInfo(int auctionNo) {
		return getSqlSession().selectOne(namespace+".selectAuctionInfo",auctionNo);
	}

	@Override
	public int insertAuctionReport(ReportVO reportVo) {
		return getSqlSession().insert(namespace+".insertAuctionReport", reportVo);
	}

	@Override
	public int selectReportHis(ReportVO reportVo) {
		return getSqlSession().selectOne(namespace+".selectReportHis", reportVo);
	}

	@Override
	public int selectTotalCount(SearchVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ReportVO> selectAll(SearchVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
