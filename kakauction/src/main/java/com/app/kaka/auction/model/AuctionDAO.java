package com.app.kaka.auction.model;

import java.util.List;
import java.util.Map;

import com.app.kaka.car.model.CarVO;
import com.app.kaka.common.SearchVO;

public interface AuctionDAO {
	public List<CarVO> carlist();
	public AuctionCarVO auctionCar(String carNum);
	public int insertAuction(AuctionVO vo);
	public int updateAuctionYn(AuctionVO vo);
	public int selectTotalCount(SearchVO vo);
	public List<AuctionCarVO> selectAll(SearchVO vo);
	public int updateAuction(int auctionNo);
	public CarVO selectByCarNum(String carNum);
	public AuctionCarVO selectAuction(int auctionNo);
	public int auctionDenyCar(String carNum);
	public int auctionDeferCar(String carNum);
	public Map<String, Object> selectAuctionGo(int auctionNo);
	public HighPriceVO selectHighPrice();
	public int insertAuctionRecord(Map<Object, Object> auctionmap);
	public String selectMemberGrade(String sellerMemberId);
}
