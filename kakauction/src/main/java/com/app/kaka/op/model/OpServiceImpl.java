package com.app.kaka.op.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OpServiceImpl implements OpService{

	@Autowired
	private OpDAO opDao;
	
	@Override
	public int insertOp(OpVO opVo) {
		return opDao.insertOp(opVo);
	}

	@Override
	public OpVO opDetail(String carNum) {
		return opDao.opDetail(carNum);
	}

}
