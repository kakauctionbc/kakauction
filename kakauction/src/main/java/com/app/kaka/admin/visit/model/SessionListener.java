package com.app.kaka.admin.visit.model;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class SessionListener implements HttpSessionListener {
	private static Logger logger  = LoggerFactory.getLogger(SessionListener.class);
	
	@Override
	public void sessionCreated(HttpSessionEvent event) {
		VisiteDAO dao = new VisiteDAO();
		logger.info("dao를 보자 ===> ",dao);
		
		//전체 방문자 수 +1
		dao.insertCount();
		
		//오늘 방문자 수
		int todayCount = dao.todayCount();
		logger.info("오늘 방문자 수는.. ",todayCount);
		
		//전체 방문자 수
		int totalCount = dao.totalCount();
		logger.info("전체 방문자 수는.. ",totalCount);
		
		HttpSession session = event.getSession();
		
		//세션 속성에 담아주기
		session.setAttribute("totalCount", totalCount);
		session.setAttribute("todayCount", todayCount);
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
		
	}

}
