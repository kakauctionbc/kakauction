package com.app.kaka.delivery.model;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DeliveryServiceImpl implements DeliveryService{

	@Autowired
	private DeliveryDAO deliveryDao;
	
	@Override
	public Map<String, Object> selectARCView(Map<String, Object> myMap) {
		return deliveryDao.selectARCView(myMap);
	}

	//구매 확정 후
	@Override
	public int updateLastBuyerYn(Map<Object, Object> map) {
		System.out.println("여기 왜 안되냐 딜리버리 서비스에 업데이트 라스트 바이어 와이엔, 파라미터 map : "+map);
		return deliveryDao.updateLastBuyerYn(map);
	}

	@Override
	public int insertTrade(Map<Object, Object> map) {
		System.out.println("여기가 안되는 거였구만 인서트 트레이드 녀석! map : "+map);
		return deliveryDao.insertTrade(map);
	}

	@Override
	public int insertDelivery(Map<Object, Object> data) {
		return deliveryDao.insertDelivery(data);
	}

	@Override
	public int updateBuyer(Map<Object, Object> data) {
		return deliveryDao.updateBuyer(data);
	}

	
}
