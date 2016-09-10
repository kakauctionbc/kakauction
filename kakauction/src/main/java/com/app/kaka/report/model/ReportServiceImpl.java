package com.app.kaka.report.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.kaka.auction.model.AuctionVO;

@Service
public class ReportServiceImpl implements ReportService{
	
	@Autowired
	private ReportDAO reportDao;
	
	@Override
	public AuctionVO selectAuctionInfo(int auctionNo) {
		return reportDao.selectAuctionInfo(auctionNo);
	}

}
