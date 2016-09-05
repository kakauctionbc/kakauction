<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>zipcode.jsp</title>
<link rel="stylesheet" type="text/css" 
	href="<c:url value='/css/mainstyle.css'/>">
<style type="text/css">
	.box2{
		width:470px;
	}
	#divZip1{
		margin: 10px 0;
	}
	.divPage{
		margin:5px 0;
		text-align: center;
	}
</style>
<script type="text/javascript" src="<c:url value='/jquery/jquery-3.1.0.min.js'/>"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#dong").focus();
		
		$("#frmZip").submit(function(){
			if($("#dong").val().length<1){
				alert("지역명을 입력하세요");
				$("#dong").focus();
				return false;
			}
			$.ajax({
				url:"<c:url value='/zipcode/getAddrApi.do'/>"				// 고객사 API 호출할 Controller URL
				,type:"post"
				,data:$("#frmZip").serialize() 								// 요청 변수 설정
				,dataType:"xml"												// 데이터 결과 : XML
				,success:function(xmlStr){									// xmlStr : 주소 검색 결과 XML 데이터
					$("#list").html("");									// 결과 출력 영역 초기화
					var errCode= $(xmlStr).find("errorCode").text();		// 응답코드
					var errDesc= $(xmlStr).find("errorMessage").text();		// 응답메시지
					if(errCode != "0"){ 									// 응답에러시 처리
						alert(errCode+"="+errDesc);
					}else{
						if(xmlStr!= null){
							makeList(xmlStr);								// 결과 XML 데이터 파싱 및 출력
						}
					}
				}
				,error: function(xhr,status, error){
					alert("에러발생"+status+":"+error);										// AJAX 호출 에러
				}
			});
			
			event.preventDefault();
		});
	});
	
	function setZipcode(zipcode, address){
		opener.document.frm1.memberZipcode.value=zipcode;
		opener.document.frm1.memberAddr.value=address;
		self.close();
	}
	
	function pageFunc(curPage){
		document.frmPage.currentPage.value=curPage;
		frmPage.submit();
	}
	
	function makeList(xmlStr){
		var tableEl = $("<table class='box2'></table>");
		var trEl = $("<tr></tr>").append("<th>우편번호</th><th>주소</th>");
		tableEl.append(trEl);
		
		// jquery를 이용한 XML 결과 데이터 파싱
		$(xmlStr).find("juso").each(function(){
			var zipNo = $(this).find('zipNo').text();
			var roadAddr = $(this).find('roadAddr').text();
			
			var tdEl1 = $("<td></td>").html(zipNo);
			var anchor = $("<a href='#'></a>").html(roadAddr).attr("onclick","setZipcode('"+zipNo+"','"+roadAddr+"')");
			
			var tdEl2 = $("<td></td>").html(anchor);
			
			var trEl2 = $("<tr></tr>").append(tdEl1).append(tdEl2);
			
			tableEl.append(trEl2);
		});
		$("#list").append(tableEl);
	}	
</script>	
</head>
<body>
	<h2>우편번호 검색</h2>
	<p>찾고 싶으신 주소의 동(읍,면)을 입력하세요</p>
	<form name="frmZip" id="frmZip" method="post">
		<input type="hidden" name="currentPage" value="1"/>				<!-- 요청 변수 설정 (현재 페이지) -->
	    <input type="hidden" name="countPerPage" value="10"/>				<!-- 요청 변수 설정 (페이지당 출력 개수) -->
	    <input type="hidden" name="confmKey" value="U01TX0FVVEgyMDE2MDcxODIyMDcxMzEzODg5"/>		<!-- 요청 변수 설정 (승인키) -->
		<label for="dong">지역명</label>
		<input type="text" name="keyword" id="dong" 
			value="${param.keyword }">	
		<input type="submit" value="찾기">	
	</form>
	<div id="list">
	<%-- <c:if test="${alist!=null}">
		<table 	class="box2" 
			summary="우편번호 검색 결과에 관한 표로써, 
			우편번호,주소에 대한 정보를 제공합니다">
			<colgroup>
				<col style="width:20%">
				<col style="width:*">			
			</colgroup>
			<thead>
				<tr>
					<th scope="col">우편번호</th>
					<th scope="col">주소</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty alist }">
					<tr>
						<td colspan="2" 
							style="text-align: center">
							해당하는 데이터가 없습니다.
						</td>
					</tr>
				</c:if>
				<c:if test="${!empty alist }">
					<c:forEach var="vo" items="${alist }">
						<c:set var="address" value="${vo.sido} ${vo.gugun} ${vo.dong}"/>
						<c:set var="bunji" value="${vo.startbunji}"/>
						<c:if test="${!empty vo.endbunji }">
							<c:set var="bunji" value="${vo.startbunji} ~ ${vo.endbunji}"/>
						</c:if>
						<!-- 반복 시작 -->
						<tr>
							<td>${vo.zipcode }</td>
							<td>
							<a href="#" 
								onclick
								="setZipcode('${vo.zipcode }','${address }')">
								${address } ${bunji}
							</a>
							</td> 				
						</tr>
						<!-- 반복 끝 -->
					</c:forEach>
			 	</c:if>
			</tbody>
		</table>
		<div class="divPage">
			<!-- 이전 블럭으로 이동 -->
			<c:if test="${pagingInfo.firstPage>1}">
				<a href="#" onclick="pageFunc(${pagingInfo.firstPage-1})">
					<img src="<c:url value='/images/first.JPG'/>" alt="이전블럭으로">
				</a>
			</c:if>
			
			<!-- 페이지 번호 추가 -->						
			<!-- [1][2][3][4][5][6][7][8][9][10] -->
			<c:forEach var="i" begin="${pagingInfo.firstPage }" end="${pagingInfo.lastPage }">
				<c:if test="${i==pagingInfo.currentPage }">
					<span style="color:blue;font-weight: bold">${i}</span>
				</c:if>
				<c:if test="${i!=pagingInfo.currentPage }">
					<a href="#" onclick="pageFunc(${i})">[${i}]</a>
				</c:if>
			</c:forEach>
			<!--  페이지 번호 끝 -->
			
			<!-- 다음 블럭으로 이동 -->
			<c:if test="${pagingInfo.lastPage<pagingInfo.totalPage }">
				<a href="#" onclick="pageFunc(${pagingInfo.lastPage+1})">
					<img src="<c:url value='/images/last.JPG'/>" alt="다음블럭으로">
				</a>
			</c:if>
		</div>
	</c:if> --%>
	</div>
</body>
</html>










