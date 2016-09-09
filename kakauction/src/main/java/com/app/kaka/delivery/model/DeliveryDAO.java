package com.app.kaka.delivery.model;

import java.util.Map;

public interface DeliveryDAO {
	public Map<String, Object> selectARCView(int auctionNo);
}
