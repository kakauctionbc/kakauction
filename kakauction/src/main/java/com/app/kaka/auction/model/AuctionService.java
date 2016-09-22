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

public interface AuctionService {
	//경매 종료를 위한 회원 등급별 시간
	public static final String MEMBER_VVIP="MEMBER_VVIP"; //14일
	public static final String MEMBER_RVIP="MEMBER_RVIP"; //7일
	public static final String MEMBER_ADMIN="ADMIN"; //관리자
	public static final String MEMBER_VIP="MEMBER_VIP"; //3일
	
	//경매 중간번호를 위한 값
	public static final String CAR_SIZE_LIGHT="경차"; //1
	public static final String CAR_SIZE_SMALL="소형"; //2
	public static final String CAR_SIZE_ALMOSTMIDDLE="준중"; //3
	public static final String CAR_SIZE_MIDDLE="중형"; //4
	public static final String CAR_SIZE_LARGE="대형"; //5
	public static final String CAR_SIZE_LIMU="리무진"; //6
	public static final String CAR_SIZE_SPORTS="스포츠"; //7
	public static final String CAR_SIZE_SUV="SUV"; //8
	public static final String CAR_SIZE_RV="RV"; //9
	public static final String CAR_SIZE_POTER="승합차"; //10
	public static final String CAR_SIZE_VAN="밴"; //11
	public static final String CAR_SIZE_CAMP="캠핑카"; //12
	public static final String CAR_SIZE_BUS="버스"; //13
	
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
	
	//admin에서 불러오는 것들
	public List<AuctionCarVO> selectAll(SearchVO vo);
	public List<AuctionCarVO> selectList(SearchVO vo);
	
	
	public int selRecordByBuyer(Map<String, Object> map);
	
	public int updateAuctionState(AuctionVO vo);
	
	public int updateAuction(int auctionNo);

	public AuctionCarVO selectAuction(int auctionNo);
	public int auctionDenyCar(String carNum);
	public int auctionDeferCar(String carNum, String sellerMemberId);
	public Map<String, Object> selectAuctionGo(int auctionNo);
	public int insertAuctionRecord(Map<Object, Object> auctionmap);
	public String selectMemberGrade(String sellerMemberId);
	
	public int insertByuer(BuyerVO buyerVo);
	public int selectBuyerByIdNo(BuyerVO buyerVo);

	public HighPriceVO selectHighPrice(int auctionNo);
	public int selectHighPriceCount(int auctionNo);
	
	
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
	public int carUpadeAuctionDeny(String carNum, String sellerMemberId);
	public List<CarVO> selectDenyCar(SearchVO searchVo);
	
	//하이차트
	public List<Map<String, Object>> selectAuctionDay();
	
	//메인페이지
	public Map<String, Object> selectAllCarSize();
	
	//상세검색
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
