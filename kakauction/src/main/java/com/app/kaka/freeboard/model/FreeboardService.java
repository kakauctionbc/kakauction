package com.app.kaka.freeboard.model;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface FreeboardService {
	public int insertFreeboard(FreeboardVO freeboardVo);
	public List<Map<String, Object>> fileupload(HttpServletRequest request);
	public String getUniqueFileName(String ofileName);
	public String getCurrentTime();
	public String getUploadPath(HttpServletRequest request);
}
