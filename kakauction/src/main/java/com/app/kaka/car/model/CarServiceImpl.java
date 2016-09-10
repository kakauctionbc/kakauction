package com.app.kaka.car.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CarServiceImpl implements CarService{

	@Autowired
	private CarDAO carDao;
	
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

}
