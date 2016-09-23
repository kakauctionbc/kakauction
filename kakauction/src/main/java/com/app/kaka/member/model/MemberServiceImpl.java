package com.app.kaka.member.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.kaka.common.MemDeSearchVO;
import com.app.kaka.common.SearchVO;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDao;
	
	public int insertMember(MemberVO memberVo){
		return memberDao.insertMember(memberVo);
	}

	@Override
	public int checkMemberId(String memberId) {
		int count = memberDao.checkMemberId(memberId);
		int result = 0;
		if (count>0) { //해당 아이디가 이미 존재하는 경우
			result = EXIST_ID;
		}else { //해당 아이디가 없는 경우
			result = NONE_EXIST_ID;
		}
		
		return result;
	}

	@Override
	public int checkMemberJumin(String memberJumin) {
		int count = memberDao.checkMemberJumin(memberJumin);
		
		int result = 0;
		if (count>0) { 
			result = EXIST_JUMIN;
		}else { 
			result = NONE_EXIST_JUMIN;
		}
		
		return result;
	}
	
	@Override
	public MemberVO selectMemberByUserid(String memberId) {
		return memberDao.selectMemberByUserid(memberId);
	}

	@Override
	public int loginCheck(MemberVO memberVo) {
		String dbPwd = memberDao.loginCheck(memberVo);
		int result = 0;
		if (dbPwd==null || dbPwd.isEmpty()) {
			result = ID_NONE;
		}else{
			if (dbPwd.equals(memberVo.getMemberPwd())) {
				//비밀번호도 일치 => 로그인 성공
				result = LOGIN_OK;
			}else{
				//비밀번호가 일치하지 않는 경우
				result = PWD_DISAGREE;
			}
		}
		
		return result;
	}

	@Override
	public int updateMember(MemberVO memberVo) {
		return memberDao.updateMember(memberVo);
	}

	@Override
	public int memberOut(String memberId) {
		return memberDao.memberOut(memberId);
	}

	@Override
	public int updateMemberPwd(MemberVO memberVo) {
		return memberDao.updateMemberPwd(memberVo);
	}

	@Override
	public List<MemberVO> selectAllMember() {
		return memberDao.selectAllMember();
	}

	@Override
	public List<MemberVO> selectAllMember2(SearchVO searchVo) {
		return memberDao.selectAllMember2(searchVo);
	}

	@Override
	public int memberAllCount2(SearchVO searchVo) {
		return memberDao.memberAllCount2(searchVo);
	}

	@Override
	public String whereMemberGrade(String memberId) {
		return memberDao.whereMemberGrade(memberId);
	}

	@Override
	public int selectAllMemberCount2(MemDeSearchVO searchVo) {
		return memberDao.selectAllMemberCount2(searchVo);
	}

	@Override
	public String findMemberId(MemberVO memberVo) {
		return memberDao.findMemberId(memberVo);
	}
}
