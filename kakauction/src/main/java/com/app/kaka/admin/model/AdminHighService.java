package com.app.kaka.admin.model;

import java.util.List;
import java.util.Map;

public interface AdminHighService {
	public List<String> selectAllauction();
	public List<String> selectAllLastBuyer();
	public List<String> selectAllTrade();
	public List<String> selectAllsell();
	public List<String> selectAllsellFail();
	public List<String> selectAllRecord();
}	
