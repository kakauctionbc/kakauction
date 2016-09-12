package com.app.kaka.excel.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.app.kaka.member.model.MemberVO;

public interface ExcelDAO {
	public void excelAdd(Map<String, Object> map);
}
