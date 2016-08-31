package com.app.kaka.notireply.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NotireplyServiceImpl implements NotireplyService{

	@Autowired
	private NotireplyDAO notireplyDao;
	
	@Override
	public int insertComment(NotireplyVO vo) {
		return notireplyDao.insertComment(vo);
	}

}
