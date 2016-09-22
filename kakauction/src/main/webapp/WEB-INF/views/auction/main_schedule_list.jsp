<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<style>
	tbody tr td img{
		height: 20px;
	}
	
	table {
		font-size: 1.8em;
	}
	
	.align_right{
		text-align: right;
	}	
</style>
<div class="schedule">
	<table summary="경매 일정을 알려드립니다.">
		<tbody>
			<c:if test="${empty schedule}">
				<td class="align_center" colspan="9">등록된 경매일정이 없습니다.</td>
			</c:if>
			<c:if test="${!empty schedule}">
				<c:forEach var="vo" items="${schedule}">
					<tr>
						<td class="title">
							<a href="<c:url value='/auction/auctiongo.do?auctionNo=${vo.auctionNo }'/>">
							KAKAUCTION
							<fmt:formatDate value="${vo.auctionRegdate}" pattern="yyyy/MM/dd"/> 
							 ${vo.auctionNo}회차 경매
							 </a> 
						</td>						
						<td class="align_right">
							<jsp:useBean id="toDay" class="java.util.Date" />
							<fmt:formatDate var="today" value="${toDay}" pattern="yyyy-MM-dd HH:mm:ss" />
							<c:if test="${toDay <= vo.auctionFinish }">
								<img alt="진행" src="${pageContext.request.contextPath }/img/start.png">
							</c:if>
							<c:if test="${toDay > vo.auctionFinish }">
								<img alt="종료" src="${pageContext.request.contextPath }/img/end.png">
							</c:if>
						</td>						
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
</div>