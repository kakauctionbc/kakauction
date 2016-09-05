package com.app.kaka.email.model;

import java.util.Map;

import com.app.kaka.member.model.MemberVO;

public interface EmailDAO {
	//public String getPwd(Map<String, Object> paramMap);
	public String getPwd(MemberVO memberVo);
}
