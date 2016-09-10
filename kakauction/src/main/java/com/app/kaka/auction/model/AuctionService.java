package com.app.kaka.auction.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.app.kaka.buyer.model.BuyerVO;
import com.app.kaka.car.model.CarVO;
import com.app.kaka.common.SearchVO;

public interface AuctionService {
	//경매 종료를 위한 회원 등급별 시간
	public static final String MEMBER_VVIP="VVIP"; //14일
	public static final String MEMBER_RVIP="RVIP"; //7일
	public static final String MEMBER_VIP="VIP"; //3일
	
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
	public int insertByuer(BuyerVO buyerVo);
	public List<BuyerVO> selectBuyer();
	public int selectHighPriceCount();
}
