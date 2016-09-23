package com.app.kaka.alert.model;

import com.app.kaka.car.model.CarVO;

public interface AlertService {
	public static final String ALERT_DEFER = "DEFER";
	public static final String ALERT_DENY = "DENY";
	public static final String ALERT_AGAIN = "AGAIN";
	
	public int sendDeferCar(String carNum, String sellerMemberId);
	public int sendDenyCar(String carNum, String sellerMemberId);

	public int newAlert(String memberId);
	
	public AlertVO selectByAlertNo(int alertNo);
	public int sendAgainAuctionAlert(CarVO carVo, int auctionNo);
	
}
