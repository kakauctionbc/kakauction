<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<style>
	tbody tr td img{
		height: 20px;
		vertical-align: middle;
		margin-left: 10px;
	}
	
	table {
		font-size: 1.8em;
	}
	
	.align_right{
		text-align: right;
	}
	.scheduleTitle{
		padding-top: 8px;
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
						<td class="scheduleTitle">
							<a href="<c:url value='/auction/auctiongo.do?auctionNo=${vo.auctionNo }'/>">
							KAKAUCTION
							<fmt:formatDate value="${vo.auctionRegdate}" pattern="MM/dd"/> 
							 ${vo.auctionNo}회차 경매
							 </a> 
							 
							 <jsp:useBean id="toDay" class="java.util.Date" />
							<c:if test="${vo.auctionState!='END' }">
								<img alt="진행" src="${pageContext.request.contextPath }/img/start.png">
							</c:if>
							<c:if test="${vo.auctionState=='END' }">
								<img alt="종료" src="${pageContext.request.contextPath }/img/end.png">
							</c:if>
						</td>						
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
</div>