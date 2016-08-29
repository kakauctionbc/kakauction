package com.app.kaka.member.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDao;
	
	public int insertMember(MemberVO memberVo){
		return memberDao.insertMember(memberVo);
	}
}
