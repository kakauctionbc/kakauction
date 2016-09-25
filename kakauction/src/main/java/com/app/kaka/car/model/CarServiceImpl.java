package com.app.kaka.car.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.kaka.alert.model.AlertService;
import com.app.kaka.auction.model.AuctionService;

@Service
public class CarServiceImpl implements CarService{

	@Autowired
	private CarDAO carDao;
	
	@Autowired
	private AlertService alertService;
	
	@Autowired
	private AuctionService auctionService;
	
	@Override
	public int insertCar(CarVO carVo) {
		return carDao.insertCar(carVo);
	}

	@Override
	public CarVO carDetail(String carNum) {
		return carDao.carDetail(carNum);
	}

	@Override
	public List<Map<String, Object>> selectCarPictureByMemberId(String memberId) {
		return carDao.selectCarPictureByMemberId(memberId);
	}

	@Override
	public int upMemeberGrade(String memberId) {
		return carDao.upMemeberGrade(memberId);
	}

	@Override
	public String selectMemberGrade(String memberId) {
		return carDao.selectMemberGrade(memberId);
	}

	@Override
	public List<CarVO> selectDeferListByMemberId(String memberId) {
		return carDao.selectDeferListByMemberId(memberId);
	}

	@Override
	public Map<String, Object> selectDeferCarDetail(CarVO carVo) {
		return carDao.selectDeferCarDetail(carVo);
	}

	@Override
	public int editCar(CarVO carVo) {
		return carDao.editCar(carVo);
	}

	@Override
	@Transactional
	public int againAuction(CarVO carVo, int auctionNo, int recordNo) {
		int cnt = alertService.sendAgainAuctionAlert(carVo, auctionNo);
		if(cnt>0){
			cnt = auctionService.updateCancleAuction(recordNo);
		}
		
		if(cnt>0){
			return carDao.againAuction(carVo);
		}
		return 0;
	}

}
