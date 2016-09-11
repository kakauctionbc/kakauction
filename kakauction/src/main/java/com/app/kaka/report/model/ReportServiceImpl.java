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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ReportVO> selectAll(SearchVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
