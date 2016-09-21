package com.app.kaka.freereply.model;

import java.util.List;
import java.util.Map;

import com.app.kaka.common.SearchVO;

public interface FreeReplyDAO {
	public int insertComment(FreeReplyVO vo);
	public List<FreeReplyVO> selectComment(SearchVO searchVo);
	public int selectTotalCount(SearchVO searchVo);
	
	//대댓글
	public int updateSortNo(FreeReplyVO freeReplyVo);
	public int insertReply(FreeReplyVO freeReplyVo);
	public int deleteReply(Map<String, String> map);
	public int editComment(FreeReplyVO freereplyVo);
}
