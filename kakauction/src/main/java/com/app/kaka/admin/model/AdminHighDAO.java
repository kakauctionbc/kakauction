package com.app.kaka.admin.model;

import java.util.List;
import java.util.Map;

public interface AdminHighDAO {
	public List<String> selectAllauction();
	public List<String> selectAllLastBuyer();
	public List<String> selectAllTrade();
	public List<String> selectAllsell();
	public List<String> selectAllsellFail();
	public List<String> selectAllRecord();
}
