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
	public List<String> selectAllauction() {
		return adminDao.selectAllauction();
	}

	@Override
	public List<String> selectAllLastBuyer() {
		return adminDao.selectAllLastBuyer();
	}

	@Override
	public List<String> selectAllTrade() {
		return adminDao.selectAllTrade();
	}

	@Override
	public List<String> selectAllsell() {
		return adminDao.selectAllsell();
	}

	@Override
	public List<String> selectAllsellFail() {
		return adminDao.selectAllsellFail();
	}

	@Override
	public List<String> selectAllRecord() {
		return adminDao.selectAllRecord();
	}

}
