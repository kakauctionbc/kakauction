package com.herb.app.board.model;

import java.sql.SQLException;
import java.util.List;

public class BoardService {
	public BoardDAO boardDao;
	
	public BoardService(){
		boardDao = new BoardDAO();
	}
	
	public List<BoardVO> listMainNotice() throws SQLException{
		return boardDao.listMainNotice();
	}
	
	public int insertBoard(BoardVO vo) throws SQLException{
		return boardDao.insertBoard(vo);
	}
	
	public List<BoardVO> selectAll(String condition, String keyword) throws SQLException{
		return boardDao.selectAll(condition, keyword);
	}
	
	public BoardVO selectByNo(int no) throws SQLException{
		return boardDao.selectByNo(no);
	}
	
	public int updateReadCount(int no) throws SQLException{
		return boardDao.updateReadCount(no);
	}
	
	public int updateContent(BoardVO vo) throws SQLException{
		return boardDao.updateContent(vo);
	}
	
	public boolean checkPwd(int no, String pwd) throws SQLException{
		return boardDao.checkPwd(no, pwd);
	}
	
	public  int  deleteOk(int no) throws SQLException{
		return boardDao.deleteOk(no);
	}
}
