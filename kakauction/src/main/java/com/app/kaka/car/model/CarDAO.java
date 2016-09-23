package com.app.kaka.car.model;

import java.util.List;
import java.util.Map;

public interface CarDAO {
	public int insertCar(CarVO carVo);
	public CarVO carDetail(String carNum);
	public List<Map<String, Object>> selectCarPictureByMemberId(String memberId);
	public int upMemeberGrade(String memberId);
	public String selectMemberGrade(String memberId);
	public List<CarVO> selectDeferListByMemberId(String memberId);
	public Map<String, Object> selectDeferCarDetail(CarVO carVo);
	public int editCar(CarVO carVo);
	public int againAuction(CarVO carVo);
}
