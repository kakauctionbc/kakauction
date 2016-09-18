package com.app.kaka.report.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.kaka.auction.model.AuctionVO;
import com.app.kaka.common.SearchVO;
import com.app.kaka.member.model.MemberDAO;
import com.app.kaka.member.model.MemberVO;

@Service
public class ReportServiceImpl implements ReportService{
	
	@Autowired
	private ReportDAO reportDao;
	
	@Autowired
	private MemberDAO memberDao;
	
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

	@Override
	public ReportVO selectByNo(int reportNo) {
		return reportDao.selectByNo(reportNo);
	}

	@Override
	public String searchMemberId(ReportVO reportVo) {
		if(reportVo.getOriginType()==1){
			return reportDao.searchMemberIdFromFB(reportVo.getOriginNo());
		}else{
			return reportDao.searchMemberIdFromAuction(reportVo.getOriginNo());
		}
	}

	@Override
	@Transactional
	public int reportHandle(String memberId, String memberGrade, int reportNo) {
		int cnt = 0;
		if(memberGrade.equals("강제탈퇴")){
			cnt = memberDao.memberOut(memberId);
		}else{
			MemberVO memVo = new MemberVO();
			memVo.setMemberId(memberId);
			if(memberGrade.equals("경고")){
				memVo.setMemberGrade("WARNING");
			}else if(memberGrade.equals("활동정지")){
				memVo.setMemberGrade("STOP");
			}else if(memberGrade.equals("강등")){
				memVo.setMemberGrade("MEMBER");
			}
			cnt = reportDao.memberHandle(memVo);
		}
		int cnt1 = 0;
		if(cnt>0){
			cnt1 = reportDao.reportResult(reportNo);
		}
		return cnt1;
	}

}
