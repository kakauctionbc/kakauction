package com.app.kaka.report.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.kaka.auction.model.AuctionVO;
import com.app.kaka.common.SearchVO;

@Service
public class ReportServiceImpl implements ReportService{
	
	@Autowired
	private ReportDAO reportDao;
	
	@Override
	public AuctionVO selectAuctionInfo(int auctionNo) {
		return reportDao.selectAuctionInfo(auctionNo);
	}

	@Override
	public int insertAuctionReport(ReportVO reportVo) {
		return reportDao.insertAuctionReport(reportVo);
	}

	@Override
	public int selectReportHis(ReportVO reportVo) {
		return reportDao.selectReportHis(reportVo);
	}

	@Override
	public int selectTotalCount(SearchVO vo) {
		return reportDao.selectTotalCount(vo);
	}

	@Override
	public List<ReportVO> selectAll(SearchVO vo) {
		return reportDao.selectAll(vo);
	}

	@Override
	public List<ReportVO> selectMemberIdAll(SearchVO searchVo) {
		return reportDao.selectMemberIdAll(searchVo);
	}

	@Override
	public int updateReportCount(int auctionNo) {
		return reportDao.updateReportCount(auctionNo);
	}

	@Override
	public int selectReportMy(ReportVO vo) {
		return reportDao.selectReportMy(vo);
	}

}
