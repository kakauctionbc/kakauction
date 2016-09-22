<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<style>
	table {
		font-size: 1em;
	}
	
	.align_right{
		text-align: right;
	}
	.noticeTitle{
		padding-top: 8px;
		padding-left: 20px;
	}
	.noticeRegdate{
		padding-top: 8px;
		padding-left: 20px;
	}
</style>
<div class="schedule">
	<table summary="경매 일정을 알려드립니다.">
		<tbody>
			<c:if test="${empty mainNotice}">
				<td class="align_center" colspan="9">등록된 경매일정이 없습니다.</td>
			</c:if>
			<c:if test="${!empty mainNotice}">
				<c:forEach var="vo" items="${mainNotice}">
					<tr>
						<td class="noticeTitle">
							<a href="<c:url value='/notice/detail.do?noticeNo=${vo.noticeNo}'/>">
								<c:if test="${fn:length(vo.noticeTitle)>15}">
									${fn:substring(vo.noticeTitle,0,15)}...
								</c:if>
								<c:if test="${fn:length(vo.noticeTitle)<=15}">
									${vo.noticeTitle}
								</c:if>
							 </a> 
						</td>						
						<td class="noticeRegdate">
							<fmt:formatDate value="${vo.noticeRegdate}" pattern="yyyy.MM.dd " />
						</td>						
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
</div>