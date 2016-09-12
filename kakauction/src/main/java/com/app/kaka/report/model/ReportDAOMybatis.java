package com.app.kaka.report.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.app.kaka.auction.model.AuctionCarVO;
import com.app.kaka.auction.model.AuctionVO;
import com.app.kaka.common.SearchVO;

import oracle.net.aso.s;

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
		return getSqlSession().selectOne(namespace+".selectTotalCount",vo);
	}

	@Override
	public List<ReportVO> selectAll(SearchVO vo) {
		return getSqlSession().selectList(namespace+".selectAll", vo);
	}

	@Override
	public List<ReportVO> selectMemberIdAll(SearchVO searchVo) {
		return getSqlSession().selectList(namespace+".selectMemberIdAll", searchVo);
	}

	@Override
	public int updateReportCount(int auctionNo) {
		return getSqlSession().update(namespace+".updateReportCount",auctionNo);
	}

}
