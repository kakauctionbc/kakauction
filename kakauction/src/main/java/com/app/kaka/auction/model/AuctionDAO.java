package com.app.kaka.auction.model;

import java.util.List;

import com.app.kaka.car.model.CarVO;

public interface AuctionDAO {
	public List<CarVO> carlist();
	public AuctionCarVO auctionCar(String carNum);
	public int insertAuction(AuctionVO vo);
	public int updateAuctionYn(AuctionVO vo);
}
