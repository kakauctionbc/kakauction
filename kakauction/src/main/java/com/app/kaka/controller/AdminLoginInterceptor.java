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
public class AdminLoginInterceptor extends HandlerInterceptorAdapter{
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//로그인 안된 경우 먼저 로그인하도록 에러 처리
		HttpSession session= request.getSession();
		String userid = (String)session.getAttribute("memberId");
		String memberGrade = (String)session.getAttribute("memberGrade");
		
		if(userid==null || userid.isEmpty()){
			request.setAttribute("msg", "먼저 로그인하세요");
			request.setAttribute("url","/login/login.do");
			
			RequestDispatcher dispatcher
			=request.getRequestDispatcher(
				"/WEB-INF/views/common/message.jsp");
			dispatcher.forward(request, response);
			
			return false; //다음 컨트롤러가 수행되지 않음
		}else{
			if(!"ADMIN".equals(memberGrade)){
				request.setAttribute("msg", "관리자가 아닙니다");
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

	/*@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		super.afterCompletion(request, response, handler, ex);
	}*/
	
	
}
