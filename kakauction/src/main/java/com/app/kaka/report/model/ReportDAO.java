package com.app.kaka.report.model;

import java.util.List;

import com.app.kaka.auction.model.AuctionVO;
import com.app.kaka.common.SearchVO;

public interface ReportDAO {
	public AuctionVO selectAuctionInfo(int auctionNo);
	public int insertAuctionReport(ReportVO reportVo);
	public int selectReportHis(ReportVO reportVo);
	
	public int selectTotalCount(SearchVO vo);
	public List<ReportVO> selectAll(SearchVO vo);
}
