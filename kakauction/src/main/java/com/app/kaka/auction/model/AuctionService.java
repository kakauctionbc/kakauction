package com.app.kaka.auction.model;

import java.util.List;

import com.app.kaka.car.model.CarVO;

public interface AuctionService {
	
	public static final String CAR_SIZE_LIGHT="경차"; //1
	public static final String CAR_SIZE_SMALL="소형"; //2
	public static final String CAR_SIZE_MIDDLE="중형"; //3
	public static final String CAR_SIZE_ALMOSTMIDDLE="준중"; //4
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
}
