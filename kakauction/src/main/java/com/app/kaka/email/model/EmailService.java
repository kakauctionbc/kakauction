package com.app.kaka.email.model;

import com.app.kaka.member.model.MemberVO;

public interface EmailService {
	//public String getPwd(Map<String, Object> paramMap);
	public String getPwd(MemberVO memberVo);
}
