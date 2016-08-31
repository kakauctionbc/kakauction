package com.app.kaka.freereply.model;

import java.util.List;

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

	@Override
	public List<FreeReplyVO> selectComment(int freereplyGroupno) {
		return freereplyDao.selectComment(freereplyGroupno);
	}
	
}
