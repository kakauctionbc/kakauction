package com.app.kaka.alert.model;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AlertServiceImpl implements AlertService{
	
	@Autowired
	private AlertDAO alertDao;
	
	@Override
	public int sendDeferCar(String carNum, String sellerMemberId) {
		AlertVO alertVo = new AlertVO();
		alertVo.setCarNum(carNum);
		alertVo.setSellerMemberId(sellerMemberId);
		Date date = new Date();
		int year = date.getYear()+1990;
		int month = date.getMonth()+1;
		int day = date.getDate();
		int hour = date.getHours();
		int minute = date.getMinutes();
			
		String alertContent = "경매가 "+year+"년 "+month+"월 "+day+"일 "+hour+":"+minute+"에 보류 되었습니다.\n재등록을 원하시면 양식에 맞춰 수정을 해주십시오.";
		alertVo.setAlertContent(alertContent);
		String alertTitle = "경매가 보류되었습니다.";
		alertVo.setAlertTitle(alertTitle);
		
		alertVo.setAlertType(AlertService.ALERT_DEFER);
		return alertDao.sendDeferCar(alertVo);
	}

	@Override
	public int newAlert(String memberId) {
		return alertDao.newAlert(memberId);
	}

	@Override
	public int sendDenyCar(String carNum, String sellerMemberId) {
		AlertVO alertVo = new AlertVO();
		alertVo.setCarNum(carNum);
		alertVo.setSellerMemberId(sellerMemberId);
		Date date = new Date();
		int year = date.getYear()+1990;
		int month = date.getMonth()+1;
		int day = date.getDate();
		int hour = date.getHours();
		int minute = date.getMinutes();
			
		String alertContent = "경매가 "+year+"년 "+month+"월 "+day+"일 "+hour+":"+minute+"에 거부 되었습니다.\n해당 차량은 경매에 재등록하실 수 없습니다.";
		alertVo.setAlertContent(alertContent);
		String alertTitle = "경매가 거부되었습니다.";
		alertVo.setAlertTitle(alertTitle);
		
		alertVo.setAlertType(AlertService.ALERT_DENY);
		return alertDao.sendDenyCar(alertVo);
	}

	@Override
	public AlertVO selectByAlertNo(int alertNo) {
		return alertDao.selectByAlertNo(alertNo);
	}

}
