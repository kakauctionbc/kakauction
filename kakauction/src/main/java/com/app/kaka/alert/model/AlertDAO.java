package com.app.kaka.alert.model;

public interface AlertDAO {
	int sendDeferCar(AlertVO alertVo);
	int sendDenyCar(AlertVO alertVo);
	
	int newAlert(String memberId);
	
	AlertVO selectByAlertNo(int alertNo);

}
