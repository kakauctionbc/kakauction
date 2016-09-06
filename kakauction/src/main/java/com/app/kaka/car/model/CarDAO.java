package com.app.kaka.car.model;

public interface CarDAO {
	public int insertCar(CarVO carVo);
	public CarVO carDetail(String carNum);
}
