package com.app.kaka.freereply.model;

import java.util.List;

public interface FreeReplyDAO {
	public int insertComment(FreeReplyVO vo);
	public List<FreeReplyVO> selectComment(int freereplyGroupno);
}
