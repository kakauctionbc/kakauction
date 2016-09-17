package com.app.kaka.report.model;

import java.util.List;
import java.util.Map;

import com.app.kaka.auction.model.AuctionVO;
import com.app.kaka.common.SearchVO;

public interface ReportService {
	public AuctionVO selectAuctionInfo(int auctionNo);
	public int insertAuctionReport(ReportVO reportVo);
	public int selectReportHis(ReportVO reportVo);
	public int updateReportCount(int auctionNo);
	
	public int selectTotalCount(SearchVO vo);
	public List<ReportVO> selectAll(SearchVO vo);
	public List<ReportVO> selectMemberIdAll(SearchVO searchVo);
	
	public int selectReportMy(ReportVO vo);
	public ReportVO selectByNo(int reportNo);
	public String searchMemberId(ReportVO reportVo);
	public int reportHandle(String memberId, String memberGrade);
}
