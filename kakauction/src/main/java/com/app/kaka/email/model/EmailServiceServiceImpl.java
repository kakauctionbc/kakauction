package com.app.kaka.email.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.kaka.member.model.MemberVO;

@Service
public class EmailServiceServiceImpl implements EmailService {
	
	@Autowired
	private EmailDAO emailDao;

	@Override
	public String getPwd(MemberVO memberVo) {
		return emailDao.getPwd(memberVo);
	}

	@Override
	public int updatePwd(MemberVO memberVo) {
		return emailDao.updatePwd(memberVo);
	}

	/*@Override
	public String getPwd(Map<String, Object> paramMap) {
		return emailDao.getPwd(paramMap);
	}*/
	
	
}
