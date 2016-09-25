package com.app.kaka.admin.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminHighServiceImpl implements AdminHighService{
	@Autowired
	private AdminHighDAO adminDao;

	@Override
	public List<Map<String, Object>> selectAllauction() {
		return adminDao.selectAllauction();
	}

	@Override
	public List<Map<String, Object>> selectAllLastBuyer() {
		return adminDao.selectAllLastBuyer();
	}

	@Override
	public List<Map<String, Object>> selectAllTrade() {
		return adminDao.selectAllTrade();
	}

	@Override
	public List<Map<String, Object>> selectAllsell() {
		return adminDao.selectAllsell();
	}

	@Override
	public List<Map<String, Object>> selectAllsellFail() {
		return adminDao.selectAllsellFail();
	}

	@Override
	public List<Map<String, Object>> selectAllRecord() {
		return adminDao.selectAllRecord();
	}

}
