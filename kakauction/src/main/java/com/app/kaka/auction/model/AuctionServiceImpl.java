package com.app.kaka.auction.model;

import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.kaka.car.model.CarVO;
import com.app.kaka.common.SearchVO;

@Service
public class AuctionServiceImpl implements AuctionService{
	private final Logger logger = LoggerFactory.getLogger(AuctionServiceImpl.class);
	
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

	@Override
	public int auctionDenyCar(String carNum) {
		return auctionDao.auctionDenyCar(carNum);
	}

	@Override
	public int auctionDeferCar(String carNum) {
		return auctionDao.auctionDeferCar(carNum);
	}

	@Override
	public Map<String, Object> selectAuctionGo(int auctionNo) {
		return auctionDao.selectAuctionGo(auctionNo);
	}

	@Override
	public int insertAuctionRecord(Map<String, Object> auctionmap) {
		Map<String, Object> map = auctionDao.selectHighPrice();
		logger.info("map 키 값이 궁금해서 찍어보는 map={}",map);
		int cnt = 0;
		if(!map.get("buyer_Member_Id").equals(auctionmap.get("buyerMemberId"))){
			cnt = auctionDao.insertAuctionRecord(auctionmap);
		}
		return cnt;
	}
	

	
}
