package com.app.kaka.freereply.model;

import java.util.List;

public interface FreeReplyService {

	public int insertComment(FreeReplyVO vo);
	public List<FreeReplyVO> selectComment(int freereplyGroupno);

}
