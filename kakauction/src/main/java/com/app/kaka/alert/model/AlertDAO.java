package com.app.kaka.alert.model;

import com.app.kaka.car.model.CarVO;

public interface AlertDAO {
	public int sendDeferCar(AlertVO alertVo);
	public int sendDenyCar(AlertVO alertVo);
	
	public int newAlert(String memberId);
	
	public int updateAlertConfirm(int alertNo);
	public AlertVO selectByAlertNo(int alertNo);
	
	//경매 재등록
	public int sendAgainAuctionAlert(AlertVO alertVo);

}
