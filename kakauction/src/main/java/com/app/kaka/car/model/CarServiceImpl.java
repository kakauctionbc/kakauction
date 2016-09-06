package com.app.kaka.car.model;

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

}
