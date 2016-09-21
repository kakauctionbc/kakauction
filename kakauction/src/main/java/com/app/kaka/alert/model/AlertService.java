package com.app.kaka.alert.model;

public interface AlertService {
	public static final String ALERT_DEFER = "DEFER";
	public static final String ALERT_DENY = "DENY";
	
	public int sendDeferCar(String carNum, String sellerMemberId);
	public int sendDenyCar(String carNum, String sellerMemberId);

	public int newAlert(String memberId);
	
	public AlertVO selectByAlertNo(int alertNo);
	
	
}
