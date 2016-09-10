package com.app.kaka.report.model;

import com.app.kaka.auction.model.AuctionVO;

public interface ReportService {
	public AuctionVO selectAuctionInfo(int auctionNo);
}
