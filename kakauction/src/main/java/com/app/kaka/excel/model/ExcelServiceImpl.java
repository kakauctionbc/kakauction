package com.app.kaka.excel.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.kaka.car.model.CarVO;
import com.app.kaka.member.model.MemberVO;

@Service
public class ExcelServiceImpl implements ExcelService {
	@Autowired
	private ExcelDAO excelDao;

	public void excelAdd(Map<String, Object> map) {
		excelDao.excelAdd(map);
	}

	@Override
	public List<CarVO> excelCarList() {
		return excelDao.excelCarList();
	}

	@Override
	public void excelAddCar(Map<String, Object> map) {
		excelDao.excelAddCar(map);
	}
}
