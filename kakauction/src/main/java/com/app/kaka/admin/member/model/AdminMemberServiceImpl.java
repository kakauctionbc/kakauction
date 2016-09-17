package com.app.kaka.admin.member.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.kaka.member.model.MemberVO;

@Service
public class AdminMemberServiceImpl implements AdminMemberService {
	@Autowired
	private AdminMemberDAO adminDao;

	@Override
	public int updateGrade(MemberVO memberVo) {
		return adminDao.updateGrade(memberVo);
	}
	
	@Override
	@Transactional
	public int blackListMember(List<MemberVO> memList) {
		int cnt = 0;
		for (MemberVO vo : memList) {
			String memberId = vo.getMemberId();
			if (null != memberId ) {
				cnt = adminDao.blackListMember(vo);
				
			}
		}
		
		return cnt;
	}

	@Override
	public int updateMemberGrade(List<MemberVO> memList, String eventName) {
		int cnt =0;
		try{
			for(MemberVO vo:memList){
				//이미 해당 이벤트로 등록된 상품은 insert하지 않는다=>skip
				//체크한 상품만 등록
				String memberId=vo.getMemberId();
				if(null != memberId){
					MemberVO memberVo = new MemberVO();
					/*String memberGrade = memberVo.getMemberGrade();
					memberVo.setMemberGrade(eventName);*/
					
					/*MemberVO memberVo = new MemberVO();
					String memberGrade = memberVo.getMemberGrade();
					memberVo.setMemberGrade(eventName);
					int count
					=adminDao.selectMemberCount(memberGrade);
					
					//이미 해당 이벤트로 등록된 상품은 insert하지
					//않는다 => skip
					if(count>0){
						//이미 등록된 경우
						cnt=1;  //성공으로 셋팅
					}else{
						//등록되어 있지 않은 경우
						cnt
						=adminDao.updateMemberGrade(memberVo);
					}*/
					
					cnt
					=adminDao.updateMemberGrade(memberVo);
				}//if
			}
		}catch(RuntimeException e){
			e.printStackTrace();
			cnt=1;
			
		}
		return cnt;
	}

	@Override
	public int adminOutMember(List<MemberVO> memList) {
		int cnt = 0;
		for (MemberVO vo : memList) {
			String memberId = vo.getMemberId();
			/*System.out.println("memberid === > " + memberId);*/
			if(null != memberId ){
				cnt = adminDao.adminOutMember(vo.getMemberId());
			}
		}
		
		return cnt;
	}

}
