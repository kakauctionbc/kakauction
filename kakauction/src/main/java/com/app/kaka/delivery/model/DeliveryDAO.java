package com.app.kaka.delivery.model;

import java.util.Map;

public interface DeliveryDAO {
	public Map<String, Object> selectARCView(Map<String, Object> myMap);
	
	//구매 확정 후
	public int updateLastBuyerYn(Map<Object, Object> map);
	public int insertTrade(Map<Object, Object> map);
	public int insertDelivery(Map<Object, Object> data);
	public int updateBuyer(Map<Object, Object> data);
	
}
