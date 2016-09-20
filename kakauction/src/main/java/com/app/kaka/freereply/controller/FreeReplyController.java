package com.app.kaka.freereply.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.kaka.common.PaginationInfo;
import com.app.kaka.common.SearchVO;
import com.app.kaka.common.Utility;
import com.app.kaka.freereply.model.FreeReplyService;
import com.app.kaka.freereply.model.FreeReplyVO;

@Controller
@RequestMapping("/freeboardreply")
public class FreeReplyController {
	
	private static final Logger logger = LoggerFactory.getLogger(FreeReplyController.class);
	
	@Autowired
	private FreeReplyService freereplyService;
	
	@RequestMapping("/insertComment.do")
	public String insertComment(@ModelAttribute FreeReplyVO vo, Model model){

		logger.info("댓글 달기, 파라미터 FreeReplyVO={}", vo);
		
		int cnt = freereplyService.insertComment(vo);
		logger.info("댓글달기 결과 cnt = {}", cnt);
		
		String msg = "", url = "/freeboard/detail.do?freeboardNo="+vo.getFreeboardNo();
		if(cnt>0){
			msg = "댓글을 달았습니다!";
		}else{
			msg = "댓글달기 실패";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@RequestMapping("/comment.do")
	public String showComment(@ModelAttribute SearchVO searchVo, Model model){
		logger.info("댓글 보기, 파라미터 searchVo={}", searchVo);

		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(Utility.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(Utility.REPLY_RECORD_COUNT_PER_PAGE);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());
		
		searchVo.setBlockSize(Utility.BLOCK_SIZE);
		searchVo.setRecordCountPerPage(Utility.REPLY_RECORD_COUNT_PER_PAGE);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		
		List<FreeReplyVO> alist = freereplyService.selectComment(searchVo);
		logger.info("댓글 조회 결과, alist.size() = {}", alist.size());
		
		//전체 레코드 개수 조회하기
		int totalRecord = freereplyService.selectTotalCount(searchVo);
		pagingInfo.setTotalRecord(totalRecord);
				
		//3. 결과 저장, 뷰페이지 리턴
		model.addAttribute("alist1", alist);
		model.addAttribute("pagingInfo1", pagingInfo);
		
		return "freeboardreply/comment";
	}
	
	@RequestMapping("/rere.do")
	public String rereply(@ModelAttribute FreeReplyVO freeReplyVo, HttpSession session, Model model){
		String memberId = (String)session.getAttribute("memberId");
		freeReplyVo.setMemberId(memberId);
		
		logger.info("답변달기 처리 파라미터 freeReplyVo = {}", freeReplyVo);
		
		int cnt = freereplyService.insertReply(freeReplyVo);
		logger.info("답변달기 처리 결과, cnt={}", cnt);
		
		//3. 결과저장, 뷰 페이지 리턴
		String msg = "", url = "/freeboard/detail.do?freeboardNo="+freeReplyVo.getFreeboardNo();
		if(cnt>0){
			msg = "답변을 달았습니다";
		}else{
			msg = "답변달기 실패";
		}//if
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
	
	@RequestMapping("/delete.do")
	public String deleteReply(@ModelAttribute FreeReplyVO freereplyVo, Model model){
		//저장 프로시저에서 사용할 map 만들기
		Map<String, String> map  = new HashMap<String, String>();
		map.put("freereplyGroupno", freereplyVo.getFreereplyGroupno()+"");
		map.put("freereplyNo", freereplyVo.getFreereplyNo()+"");
		map.put("freereplyStep", freereplyVo.getFreereplyStep()+"");
		logger.info("댓글 삭제시 파라미터 map={}", map);
		
		int cnt = freereplyService.deleteReply(map);
		
		String msg = "", url = "/freeboard/detail.do?freeboardNo="+freereplyVo.getFreeboardNo();
		if(cnt>0){
			msg = "댓글을 삭제하였습니다";
		}else{
			msg = "댓글 삭제 실패";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "common/message";
	}
}
