package com.app.kaka.delivery.model;

import java.util.Map;

public interface DeliveryService {
	public Map<String, Object> selectARCView(Map<String, Object> myMap);
	
	//구매 확정 후
	public int updateLastBuyerYn(Map<String, Object> map);
	public int insertTrade(Map<String, Object> map);
	public int insertDelivery(Map<String, Object> data);
}
