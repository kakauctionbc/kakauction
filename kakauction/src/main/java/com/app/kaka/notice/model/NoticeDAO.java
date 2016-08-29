package com.app.kaka.notice.model;

import java.util.List;

import com.app.kaka.common.SearchVO;

public interface NoticeDAO {
	public int insertNotice(NoticeVO vo);
	List<NoticeVO> selectAll(SearchVO searchVo);
	public int selectTotalCount(SearchVO searchVo);
}
