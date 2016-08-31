<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<title>Insert title here</title>
</head>
<body>
	<div class="comment">
		<h3>댓글</h3><br>
		<table class="box2"
	 		summary="게시판 댓글에 대한 표로써, 작성자, 내용, 작성일시에 대한 정보를 제공합니다." style="width: 500px">
	 		<colgroup>
				<col style="width:20%;" />
				<col style="width:60%;" />
				<col style="width:20%;" />
			</colgroup>
			<thead>
				<tr>
				    <th scope="col">작성자</th>
				    <th scope="col">내용</th>
				    <th scope="col">작성일시</th>
				</tr>
			</thead>
			<c:if test="${empty alist }">
				<tr>
					<td colspan="3" class="align_center">등록된 댓글이 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${!empty alist }">
				<c:forEach var="commentVo" items="${alist }">
					<tr>
						<td style="text-align: center">${commentVo.memberId }</td>
						<td>${commentVo.content }</td>
						<td style="text-align: center"><fmt:formatDate value="${commentVo.regdate }" pattern="yyyy-MM-dd"/></td>
					</tr>
				</c:forEach>
				<!--반복처리 끝  -->
			  </c:if>
	 	</table>
	</div>
	<form id="replyComment" name="replyComment" method="post" action="<c:url value='/notice/insertComment.do'/>">
		<div class="commentWrite" style="width: 500px; margin-top: 20px;">
			<fieldset>
				<legend>댓글달기</legend>
					<p style="margin-top: 10px;">
						<label for="name" style="margin-right: 10px;">작성자</label><input type="text" name="name" style="width: 30%">
						<label for="pwd" style="margin-left: 70px; margin-right: 10px;">비밀번호</label><input type="password" name="pwd" style="width: 30%">
					</p>
					<input type="hidden" name="bdNo" value="${vo.no}">
					<p style="margin-top: 20px;">
						<textarea rows="5" cols="95" name="content"></textarea>
					</p>
					<div style="text-align: center; margin-top: 10px;">
						<input type="submit" name="commentSubmit" value="확인">
					</div>
			</fieldset>
		</div>
	</form>
</body>
</html>