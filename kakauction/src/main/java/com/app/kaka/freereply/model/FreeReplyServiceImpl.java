package com.app.kaka.freereply.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FreeReplyServiceImpl implements FreeReplyService{

	@Autowired
	private FreeReplyDAO freereplyDao;
	
	@Override
	public int insertComment(FreeReplyVO vo) {
		return freereplyDao.insertComment(vo);
	}
	
}
