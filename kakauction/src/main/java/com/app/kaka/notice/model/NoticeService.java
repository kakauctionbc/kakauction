package com.app.kaka.notice.model;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.app.kaka.common.SearchVO;

public interface NoticeService {

	List<Map<String, Object>> fileupload(HttpServletRequest request);
	int insertNotice(NoticeVO vo);
	List<NoticeVO> selectAll(SearchVO searchVo);
	int selectTotalCount(SearchVO searchVo);

}
