<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../../design/inc/adminTop.jsp"%>
<script type="text/javascript">
	$().ready(function(){
		$(document).ready(function(){
			$("#replyCon").hide();
			$("#formMaker").click(function(){
				if($("#on_off").val()=="off"){
					$("#on_off").val("on");
					$("#replyCon").show();
					
				}else if($("#on_off").val()=="on"){
					$("#on_off").val("off");
					$("#replyCon").hide();
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
		border-top: 1px solid silver;
		border-bottom: 1px solid silver;
	}
	th{
		font-size: 15px;
		font-weight: bold;
		background: #e3e3e3;
	}
	td{
		font-size: 14px;
		font-weight: bold;
	}
	#replyCon{
		text-align: center;
	}
	#replyCon th{
		width:120px;
		text-align: right;
		padding-right: 20px;
	}
	#replyCon #reCOn{
		padding-bottom: 150px;
	}
	#replyCon td{
		text-align: center;
	}
	#ansContent{
		margin-left: 100px;
	}
</style>
	<h2>Q&A 글 상세보기</h2>
	<div class="divForm">
		<table>
			<tr>
				<th>제목</th>
				<th>작성자</th>
				<th>등록일</th>
			</tr>
			<tr>
				<td>${QnaVo.questionTitle}</td>
				<td>${QnaVo.memberId}</td>
				<td><fmt:formatDate pattern="yyyy년 MM월 dd일 " value="${QnaVo.questionRegdate}"/></td>
			</tr>
			<tr>
				<th colspan="3" style="text-align: left;">내용</th>
			</tr>
			<tr>
				<td colspan="3">${QnaVo.questionContent}</td>
			</tr>
			<tr>
				<td colspan="3">
					<input type="hidden" id="on_off" value="off">
		        	|<a id="formMaker">답변</a>			
		        	|
		        	<a href="<c:url value='/admin/qnareply/list.do'/>">목록</a>|			
				</td>
			</tr>
		</table>
		<form action="<c:url value='/admin/qnareply/write.do?qnaNo=${QnaVo.questionNo}'/>">
			<table id="replyCon">
				<tr>
					<th>원본 글 번호</th>
					<td><input type="hidden" name="questionNo" value="${QnaVo.questionNo}" readonly="readonly">${QnaVo.questionNo}</td>
				</tr>
				<tr>
					<th>질문 회원 아이디</th>
					<td><input type="hidden" name="memberId" value="${QnaVo.memberId}" readonly="readonly">${QnaVo.memberId}</td>
				</tr>
				<tr>
					<th id="reCOn">답변 내용</th>
					<td><textarea id="ansContent" name="ansContent" cols="20" rows="10"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="답글 작성"></td>
				</tr>
			</table>
		</form>
	</div>
<%@ include file="../../design/inc/adminBottom.jsp"%>