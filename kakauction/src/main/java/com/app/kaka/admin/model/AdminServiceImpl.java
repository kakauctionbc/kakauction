package com.app.kaka.admin.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminDAO adminDao;

	@Override
	public int selectCountCarApply() {
		return adminDao.selectCountCarApply();
	}

	@Override
	public int selectCountAuctionStart() {
		return adminDao.selectCountAuctionStart();
	}

	@Override
	public int selectCountAuctionEnd() {
		return adminDao.selectCountAuctionEnd();
	}

	@Override
	public int selectCountReportCar() {
		return adminDao.selectCountReportCar();
	}

	@Override
	public int selectCountReportNo() {
		return adminDao.selectCountReportNo();
	}

	@Override
	public int selectCountMemberJoin() {
		return adminDao.selectCountMemberJoin();
	}

	@Override
	public int selectCountMemberOut() {
		return adminDao.selectCountMemberOut();
	}

}
