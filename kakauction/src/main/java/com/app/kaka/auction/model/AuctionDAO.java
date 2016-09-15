package com.app.kaka.auction.model;

import java.util.List;
import java.util.Map;

import com.app.kaka.buyer.model.BuyerVO;
import com.app.kaka.car.model.CarVO;
import com.app.kaka.common.DateSearchVO;
import com.app.kaka.common.SearchVO;
import com.app.kaka.record.model.RecordVO;

public interface AuctionDAO {
	public List<CarVO> carlist();
	public AuctionCarVO auctionCar(String carNum);
	public int insertAuction(AuctionVO vo);
	public int updateAuctionYn(AuctionVO vo);
	
	public int selectTotalCount(SearchVO vo);
	public int selectListCount(SearchVO vo);
	public int selectTodayCount(SearchVO vo);

	public List<AuctionCarVO> selectTodayList(SearchVO vo);
	public List<AuctionCarVO> selectAucList(SearchVO vo);
	public List<AuctionCarVO> selectAll(SearchVO vo);
	public List<AuctionCarVO> selectList(SearchVO vo);
	
	public int updateAuctionState(AuctionVO vo);
	public int selRecordByBuyer(Map<String, Object> map);
	
	public int updateAuction(int auctionNo);
	public CarVO selectByCarNum(String carNum);
	public AuctionCarVO selectAuction(int auctionNo);
	public int auctionDenyCar(String carNum);
	public int auctionDeferCar(String carNum);
	public Map<String, Object> selectAuctionGo(int auctionNo);

	public HighPriceVO selectHighPrice(int auctionNo);
	public int selectHighPriceCount(int auctionNo);
	
	public int insertAuctionRecord(Map<Object, Object> auctionmap);
	public String selectMemberGrade(String sellerMemberId);
	
	public int insertByuer(BuyerVO buyerVo);
	public int selectBuyerByIdNo(BuyerVO buyerVo);
	
	public List<AuctionCarVO> selectMyAuctionList(DateSearchVO vo);
	public int selectMyAuctionListCount(DateSearchVO vo);
	
	public List<AuctionVO> selectAuctionNoList();
	public int selAucBuyerList(int auctionNo);
	
	public int insertFailSellCar(int auctionNo);
	public int selectFailauc(int auctionNo);
	public int carFailSailUpdate(Map<String, Object> map);
	
	public RecordVO selectRecordByRecordNo(int auctionNo);
	public List<RecordVO> selectRecordByAuctionNo(int auctionNo);
	public int insertLastBuyer(RecordVO vo);
}
