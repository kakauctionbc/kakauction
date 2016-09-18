<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../../design/inc/adminTop.jsp"%>
<script type="text/javascript">
	$().ready(function(){
		$(document).ready(function(){
			$("#qnaCon").hide();
			$("#formMaker").click(function(){
				if($("#on_off").val()=="off"){
					$("#on_off").val("on");
					$("#makeForm").show();
					
				}else if($("#on_off").val()=="on"){
					$("#on_off").val("off");
					$("#makeForm").hide();
				}
			});
		});
	});

</script>
<style type="text/css">
	.divForm{
		margin: 0 auto;
	}
	table{
		width: 800px;
		text-align: center;
	}
	th, td{
		border: 1px solid silver;
	}
	th{
		font-size: 15px;
		font-weight: bold;
	}
	td{
		font-size: 14px;
		font-weight: bold;
	}
</style>
	<h2>Q&A 글 상세보기</h2>
	<div class="divForm">
		<table>
			<tr>
				<th style="text-align: left;">제목</th>
				<td>${QnaVo.questionTitle}</td>
				<th style="text-align: left;">작성자</th>
				<td>${QnaVo.memberId}</td>
			</tr>
			<tr>
				<th colspan="2" style="text-align: left;">등록일</th>
				<td colspan="2"><fmt:formatDate pattern="yyyy년 MM월 dd일 " value="${QnaVo.questionRegdate}"/></td>
			</tr>
			<tr>
				<th colspan="4" style="text-align: left;">내용</th>
			</tr>
			<tr>
				<td colspan="4">${QnaVo.questionContent}</td>
			</tr>
			<tr>
				<td colspan="4">
					<input type="hidden" id="on_off" value="off">
		        	|<a id="formMaker">답변</a>			
		        	|
		        	<a href="<c:url value='/admin/qnareply/list.do'/>">목록</a>|			
				</td>
			</tr>
		</table>
		<form action="<c:url value='/admin/qnareply/write.do?qnaNo=${QnaVo.questionNo}'/>">
			<table>
				<tr>
					<td>원본 글 번호<td>
					<td><input type="text" name="questionNo" value="${QnaVo.questionNo}"><td>
				</tr>
				<tr>
					<td>원본 글 번호<td>
					<td><input type="text" name="questionNo" value="${QnaVo.questionNo}"><td>
				</tr>
			</table>
		</form>
	</div>
<%@ include file="../../design/inc/adminBottom.jsp"%>