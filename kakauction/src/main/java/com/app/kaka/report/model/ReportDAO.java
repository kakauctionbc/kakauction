package com.app.kaka.report.model;

import java.util.List;
import java.util.Map;

import com.app.kaka.auction.model.AuctionVO;
import com.app.kaka.common.SearchVO;
import com.app.kaka.member.model.MemberVO;

public interface ReportDAO {
	public AuctionVO selectAuctionInfo(int auctionNo);
	public int insertAuctionReport(ReportVO reportVo);
	public int selectReportHis(ReportVO reportVo);
	public int updateReportCount(int auctionNo);
	
	public int selectTotalCount(SearchVO vo);
	public List<ReportVO> selectAll(SearchVO vo);
	public List<ReportVO> selectMemberIdAll(SearchVO searchVo);
	
	public int selectReportMy(ReportVO vo);
	public ReportVO selectByNo(int reportNo);
	public String searchMemberIdFromFB(int originNo);
	public String searchMemberIdFromAuction(int originNo);
	public int memberHandle(MemberVO memVo);
	public int reportResult(int reportNo);
}
