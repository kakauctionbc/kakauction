package com.app.kaka.freereply.model;

import java.util.List;

import com.app.kaka.common.SearchVO;

public interface FreeReplyService {

	public int insertComment(FreeReplyVO vo);
	public List<FreeReplyVO> selectComment(SearchVO searchVo);
	public int selectTotalCount(SearchVO searchVo);

}
