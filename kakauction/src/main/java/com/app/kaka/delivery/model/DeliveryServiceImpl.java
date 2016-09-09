package com.app.kaka.delivery.model;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DeliveryServiceImpl implements DeliveryService{

	@Autowired
	private DeliveryDAO deliveryDao;
	
	@Override
	public Map<String, Object> selectARCView(int auctionNo) {
		return deliveryDao.selectARCView(auctionNo);
	}
	
}
