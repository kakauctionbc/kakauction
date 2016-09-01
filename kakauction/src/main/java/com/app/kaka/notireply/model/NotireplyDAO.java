package com.app.kaka.notireply.model;

import java.util.List;

import com.app.kaka.common.SearchVO;
import com.app.kaka.freereply.model.FreeReplyVO;
import com.app.kaka.notice.model.NoticeVO;

public interface NotireplyDAO {
	public int insertComment(NotireplyVO vo);
	//comment
	public List<NotireplyVO> selectComment(SearchVO searchVo);
	public int selectTotalCount(SearchVO searchVo);
}
