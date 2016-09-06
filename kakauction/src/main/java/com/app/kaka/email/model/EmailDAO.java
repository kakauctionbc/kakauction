package com.app.kaka.email.model;

import com.app.kaka.member.model.MemberVO;

public interface EmailDAO {
	//public String getPwd(Map<String, Object> paramMap);
	public String getPwd(MemberVO memberVo);
	public int updatePwd(MemberVO memberVo);
}
