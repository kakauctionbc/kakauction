<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../design/inc/top.jsp"%>
<%@ include file="carInfo.jsp"%>
<%@ include file="carDetail.jsp"%>
<div>
	<table>
		<tr>
			<td>
				<a href="<c:url value='/auction/list.do'/>">목록</a>
			</td>
			<td>
				<a href="<c:url value='/auction/write.do'/>">등록</a>
			</td>
		</tr>
	</table>
</div>
<%@ include file="../design/inc/bottom.jsp"%>