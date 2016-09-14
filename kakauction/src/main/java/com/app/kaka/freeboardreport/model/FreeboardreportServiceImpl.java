package com.app.kaka.freeboardreport.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.kaka.report.model.ReportVO;

@Service
public class FreeboardreportServiceImpl implements FreeboardreportService {
	
	@Autowired
	private FreeboardreportDAO reportDao;

	@Override
	public int insertReport(ReportVO reportVo) {
		return reportDao.insertReport(reportVo);
	}
}
