package com.app.kaka.msg.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MsgServiceImpl implements MsgService{

	@Autowired
	private MsgDAO msgDao;
	
	@Override
	public int sendMessage(String memberId, String memberGrade) {
		return msgDao;
	}
	
}
