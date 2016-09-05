package com.app.kaka.email.model;

import java.util.Map;

import com.app.kaka.member.model.MemberVO;

public class EmailServiceServiceImpl implements EmailService {
	private EmailDAO emailDao;

	@Override
	public String getPwd(MemberVO memberVo) {
		return emailDao.getPwd(memberVo);
	}

	/*@Override
	public String getPwd(Map<String, Object> paramMap) {
		return emailDao.getPwd(paramMap);
	}*/
	
	
}
