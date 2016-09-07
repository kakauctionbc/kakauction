package com.app.kaka.car.model;

import java.util.List;
import java.util.Map;

public interface CarDAO {
	public int insertCar(CarVO carVo);
	public CarVO carDetail(String carNum);
	public List<Map<String, Object>> selectCarPictureByMemberId(String memberId);
}
