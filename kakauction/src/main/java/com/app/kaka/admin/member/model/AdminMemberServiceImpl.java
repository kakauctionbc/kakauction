package com.app.kaka.admin.member.model;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.kaka.common.MemDeSearchVO;
import com.app.kaka.common.SearchVO;
import com.app.kaka.member.model.MemberVO;

@Service
public class AdminMemberServiceImpl implements AdminMemberService {
	private Logger logger = LoggerFactory.getLogger(AdminMemberServiceImpl.class);
	
	@Autowired
	private AdminMemberDAO adminDao;

	@Override
	@Transactional
	public int blackListMember(List<MemberVO> memList) {
		int cnt = 0;
		for (MemberVO vo : memList) {
			String memberId = vo.getMemberId();
			if (null != memberId ) {
				vo.setMemberGrade("BLACKLIST");
				cnt = adminDao.blackListMember(vo);
				
			}
		}
		
		return cnt;
	}

	@Override
	public int updateMemberGrade(List<MemberVO> memList, String eventName) {
		int cnt =0;
		try{
			for(MemberVO vo : memList){
				//이미 해당 이벤트로 등록된 상품은 insert하지 않는다=>skip
				//체크한 상품만 등록
				String memberId=vo.getMemberId();
				if(null != memberId){
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
					vo.setMemberGrade(eventName);
					logger.info("serviceImple에서 찍은 not null memberId={}", memberId);
					cnt=adminDao.updateMemberGrade(vo);
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

	@Override
	public List<Map<String, Object>> selectAuctionMember(SearchVO searchVo) {
		return adminDao.selectAuctionMember(searchVo);
	}

	@Override
	public int AuctionMemberCount(SearchVO searchVo) {
		return adminDao.AuctionMemberCount(searchVo);
	}

	@Override
	public List<MemberVO> selectPdByConditionForeach(MemDeSearchVO vo){
		return adminDao.selectPdByConditionForeach(vo);
	}

}
