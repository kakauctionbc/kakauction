package com.app.kaka.delivery.model;

import java.util.Map;

public interface DeliveryService {
	public Map<String, Object> selectARCView(Map<String, Object> myMap);
	
	public int insertTrade(Map<String, Object> map);
}
