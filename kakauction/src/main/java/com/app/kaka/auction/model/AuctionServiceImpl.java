package com.app.kaka.auction.model;

import java.util.List;
import java.util.Properties;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.kaka.car.model.CarVO;
import com.app.kaka.common.SearchVO;

@Service
public class AuctionServiceImpl implements AuctionService{
	
	@Autowired
	private AuctionDAO auctionDao;
	
	@Resource(name="fileUploadProperties")
	private Properties fileUploadProperties;
	
	@Override
	public List<CarVO> carlist() {
		return auctionDao.carlist();
	}

	@Override
	public AuctionCarVO auctionCar(String carNum) {
		return auctionDao.auctionCar(carNum);
	}

	@Override
	public int insertAuction(AuctionVO vo) {
		return auctionDao.insertAuction(vo);
	}

	@Override
	public int updateAuctionYn(AuctionVO vo) {
		return auctionDao.updateAuctionYn(vo);
	}

	@Override
	public int selectTotalCount(SearchVO vo) {
		return auctionDao.selectTotalCount(vo);
	}

	@Override
	public List<AuctionCarVO> selectAll(SearchVO vo) {
		return auctionDao.selectAll(vo);
	}

	@Override
	public int updateAuction(int auctionNo) {
		return auctionDao.updateAuction(auctionNo);
	}

	@Override
	public CarVO selectByCarNum(String carNum) {
		return auctionDao.selectByCarNum(carNum);
	}

	@Override
	public AuctionCarVO selectAuction(int auctionNo) {
		return auctionDao.selectAuction(auctionNo);
	}
	

	
}
