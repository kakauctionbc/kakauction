package com.app.kaka.notice.model;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface NoticeService {

	List<Map<String, Object>> fileupload(HttpServletRequest request);
	int insertNotice(NoticeVO vo);

}
