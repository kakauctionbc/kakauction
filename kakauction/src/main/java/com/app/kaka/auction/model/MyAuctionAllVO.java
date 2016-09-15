package com.app.kaka.auction.model;

import java.util.List;
import java.util.Map;

public class MyAuctionAllVO {
	private AuctionCarVO AuctionCarVO;
	
	private List<Map<String, Object>> auctionDetailList;

	public AuctionCarVO getAuctionCarVO() {
		return AuctionCarVO;
	}

	public void setAuctionCarVO(AuctionCarVO auctionCarVO) {
		AuctionCarVO = auctionCarVO;
	}

	public List<Map<String, Object>> getAuctionDetailList() {
		return auctionDetailList;
	}

	public void setAuctionDetailList(List<Map<String, Object>> auctionDetailList) {
		this.auctionDetailList = auctionDetailList;
	}

	@Override
	public String toString() {
		return "MyAuctionAllVO [auctionVo=" + AuctionCarVO + ", auctionDetailList=" + auctionDetailList + "]";
	}
	
	
}
