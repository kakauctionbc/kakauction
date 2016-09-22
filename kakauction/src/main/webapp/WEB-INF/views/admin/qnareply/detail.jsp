<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../../design/inc/adminTop.jsp"%>
<script type="text/javascript">
	$().ready(function(){
		CKEDITOR.replace( 'ansContent',{
			skin:'minimalist',
			uiColor: '#f8f9ef'
		});
		
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
		margin-top: 50px;
		margin-left: 80px;
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
		text-align: right;
		padding-right: 20px;
	}
	#replyCon #reCOn{
		width:600px;
		padding-bottom: 150px;
	}
	#replyCon td{
		text-align: center;
	}
	#ansContent{
		width: 100%;
	}
</style>
<div id="wrap">
	<div id="wrapdiv">
		<div id="wraptop">
			<div class="offset"></div>
			<p>
					<a href="${pageContext.request.contextPath }/admin/index.do">관리자HOME</a>>Q&A 답변
			</p>
		</div>
		<div id="pagelogo">
			<img src="${pageContext.request.contextPath }/img/qnaReply_logo.png"
				alt="경매리스트로고">
		</div>
		<div class="divForm">
			<table style="margin-bottom: 50px;">
				<colgroup>
					<col style="width: 20%;" />
					<col style="width: 60%;" />
					<col style="width: 20%;" />
				</colgroup>
				<tr>
					<th>작성자</th>
					<th>제목</th>
					<th>등록일</th>
				</tr>
				<tr>
					<td>${QnaVo.memberId}</td>
					<td>${QnaVo.questionTitle}</td>
					<td><fmt:formatDate pattern="yyyy년 MM월 dd일 " value="${QnaVo.questionRegdate}"/></td>
				</tr>
				<tr>
					<th colspan="3" style="text-align: center;">내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;용</th>
				</tr>
				<tr>
					<td colspan="3" style="padding: 20 0 20 0;">${QnaVo.questionContent}</td>
				</tr>
				<tr>
					<td colspan="3" style="border-bottom: none; padding-top: 10px;">
						<input type="hidden" id="on_off" value="off">
			        	|<a href="<c:url value='/admin/qnareply/qnalist.do'/>">목록</a>|			
					</td>
				</tr>
			</table>
			<form action="<c:url value='/admin/qnareply/write.do?qnaNo=${QnaVo.questionNo}'/>" method="post">
				<table id="replyCon">
					<colgroup>
						<col style="width: 15%;" />
						<col style="width: 20%;" />
						<col style="width: 20%;" />
						<col style="width: 40%;" />
					</colgroup>
					<tr>
						<th>원본 글 번호</th>
						<td><input type="hidden" name="questionNo" value="${QnaVo.questionNo}" readonly="readonly">${QnaVo.questionNo}</td>
						<th>질문 회원 아이디</th>
						<td><input type="hidden" name="memberId" value="${QnaVo.memberId}" readonly="readonly">${QnaVo.memberId}</td>
					</tr>
					<tr  style="margin-bottom: 20px;">
						<th id="reCOn">답변 내용</th>
						<td colspan="3"><textarea id="ansContent" name="ansContent" cols="40" rows="10"></textarea></td>
					</tr>
					<tr>
						<td colspan="4" style="border-bottom: none;"><input type="submit" value="답글 작성"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</div>
<%@ include file="../../design/inc/adminBottom.jsp"%>