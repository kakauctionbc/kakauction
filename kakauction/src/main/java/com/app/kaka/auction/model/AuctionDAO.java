package com.app.kaka.auction.model;

import java.util.List;
import java.util.Map;

import com.app.kaka.buyer.model.BuyerVO;
import com.app.kaka.car.model.CarVO;
import com.app.kaka.carsize.model.CarsizeVO;
import com.app.kaka.common.DateSearchVO;
import com.app.kaka.common.SearchVO;
import com.app.kaka.gas.model.GasVO;
import com.app.kaka.record.model.RecordVO;

public interface AuctionDAO {
	public List<CarVO> carlist();
	public AuctionCarVO auctionCar(String carNum);
	public int insertAuction(AuctionVO vo);
	public int updateAuctionYn(AuctionVO vo);
	
	//전체 리스트
	public List<AuctionCarVO> selectAucList(SearchVO vo);
	public int selectListCount(SearchVO vo);
	
	//오늘의 경매 리스트
	public List<AuctionCarVO> selectTodayList(SearchVO vo);
	public int selectTodayCount(SearchVO vo);
	
	//나의 경매 리스트
	public List<Map<String, Object>> selectMyAuctionList(DateSearchVO vo);
	
	//종료된 경매는 보이지 않음
	public int selectTotalCount(SearchVO vo);
	
	//서비스에서 사용할 애들
	public int updateAuctionState(AuctionVO vo);
	public int selRecordByBuyer(Map<String, Object> map);
	
	//조회수 증가
	public int updateAuction(int auctionNo);
	
	//admin 에서 불러오는 것들
	public List<AuctionCarVO> selectAll(SearchVO vo);
	public List<AuctionCarVO> selectList(SearchVO vo);
	
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
	

	//종료된 경매에 대한 처리
	public List<AuctionVO> selectAuctionNoList();
	public int selAucBuyerList(int auctionNo);
	
	public int insertFailSellCar(int auctionNo);
	public int selectFailauc(int auctionNo);
	public int carFailSailUpdate(Map<String, Object> map);
	
	public RecordVO selectRecordByRecordNo(int auctionNo);
	public List<RecordVO> selectRecordByAuctionNo(int auctionNo);
	public int insertLastBuyer(RecordVO vo);
	
	//낙찰된 경매를 보자
	public List<Integer> selectMyAuctionById(String memberId);
	public List<Map<String, Object>> selectLastBuyer(DateSearchVO vo);
	public int selectLastBuyerCount(String memberId);
	
	public String selectAucBynoToState(int auctionNo);
	
	public int selectLastBuyerById(RecordVO vo);
	
	public AuctionVO selectAucByAuctionNo(int auctionNo);
	public int adminUpdateStateStop(Map<String, Object> map);
	
	//거부된 경매
	public int carUpadeAuctionDeny(String carNum);
	public List<CarVO> selectDenyCar(SearchVO searchVo);
	
	//하이차트
	public List<Map<String, Object>> selectAuctionDay();
	
	//메인페이지
	public Map<String, Object> selectAllCarSize();
	
	//상세검색 셀렉트
	public List<CarsizeVO> selectCarsize();
	public List<GasVO> selectCarGas();
	
	//내가 등록한 차량의 경매를 보자
	public List<Map<String, Object>> myCarAucList(DateSearchVO searchVo);
	
	//경매일정
	public List<AuctionVO> selectAllSchedule(SearchVO searchVo);
	public int selectAllScheduleCount(SearchVO searchVo);
	
	//경매일정 메인창에!
	public List<AuctionVO> mainSchedule();
}
