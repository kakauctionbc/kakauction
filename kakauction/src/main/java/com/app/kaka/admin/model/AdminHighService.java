package com.app.kaka.admin.model;

import java.util.List;
import java.util.Map;

public interface AdminHighService {
	public List<Map<String, Object>> selectAllauction();
	public List<Map<String, Object>> selectAllLastBuyer();
	public List<Map<String, Object>> selectAllTrade();
	public List<Map<String, Object>> selectAllsell();
	public List<Map<String, Object>> selectAllsellFail();
	public List<Map<String, Object>> selectAllRecord();
}	
