package com.app.kaka.freeboardreport.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FreeboardreportServiceImpl implements FreeboardreportService {
	
	@Autowired
	private FreeboardreportDAO reportDao;

	@Override
	public int insertReport(FreeboardreportVO reportVo) {
		return reportDao.insertReport(reportVo);
	}
}
