package com.app.kaka.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class StopMemberInterceptor extends HandlerInterceptorAdapter{
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session= request.getSession();
		String memberGrade = (String)session.getAttribute("memberGrade");
		
		if("STOP".equals(memberGrade)){
			request.setAttribute("msg", "불량회원입니다");
			request.setAttribute("url","/index.do");
			
			RequestDispatcher dispatcher
			=request.getRequestDispatcher(
				"/WEB-INF/views/common/message.jsp");
			dispatcher.forward(request, response);
			
			return false; //다음 컨트롤러가 수행되지 않음
		}
		return true;  //다음 컨트롤러가 수행됨
	}
}
