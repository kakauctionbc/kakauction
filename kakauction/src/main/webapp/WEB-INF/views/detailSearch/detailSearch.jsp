<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	$(".accordion").click(function() {
		$( this ).toggleClass( "active" );
		$( this ).next().toggleClass( "show" );
	});
	
	$(document).ready(function(){
		$(".listSearch1").click(function(){
			 $("#openNav").val(1);
			 document.desearchfrm.submit();
		});
		
		$(":radio").click(function(){
			 $("#openNav").val(1);
			 document.desearchfrm.submit();
		});
		 
		$("#btSearch").click(function(){
			document.desearchfrm.submit();
		});
	});
	
	
	
</script>
<style type="text/css">
	.accordion{
		margin-left:150px;
		width: 1000px;
	}
	#laname{
		text-align: center;
		font-size: 15px;
		border: 1px solid silver;
	}
</style>
<div id="mySidenav" class="sidenav">

	<form action="<c:url value='/auction/list.do'/>" method="post" name="desearchfrm">
		<input type="hidden" name="openNav" id="openNav" value="${param.openNav }">
		
	
	<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
	<p>상세검색</p>
 	<p class="accordion">차종</p>
		<div class="panel">
			<c:forEach var="cslist" items="${carsizeList}" varStatus="vs">
				<div class="carSizes" style="height: 25px;">
					<input type="checkbox" name="carSizes" class="listSearch1" id="carSizes${vs.index}" value="${cslist.carSize}"
					<c:forEach var="carSizes1" items="${searchVo.carSizes }">
						<c:if test="${carSizes1==cslist.carSize }"> checked </c:if>
					</c:forEach>>
					<label for="carSizes${vs.index}" id="laname">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					${cslist.carSize}
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
				</div>
			</c:forEach>
		</div> 

	<p class="accordion">경매시작가</p>
		<div class="panel">
			최소가 <input type="text" name="priceS" size="45" value="${param.priceS}">만원 ~
			<br>최대가 <input type="text" name="priceD" size="45" value="${param.priceD}">만원
			<input type="button" id="btSearch" value="검색">
		</div>
	
	<p class="accordion">연료</p>
		<div class="panel">
			<c:forEach var="cglist" items="${cargasList}" varStatus="vs">
				<div class="carGases" style="height: 25px;">
					<input type="checkbox" name="carGases" id="carGas${vs.index}" value="${cglist.carGas}"
					<c:forEach var="cargas1" items="${searchVo.carGases }">
						<c:if test="${cargas1==cglist.carGas }"> checked </c:if>
					</c:forEach>>
					<label for="carGas${vs.index}" class="laname">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					${cglist.carGas}
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
				</div>
			</c:forEach>
		</div>
	
	<p class="accordion">변속기</p>
		<div class="panel">
				<input type="radio" id="carAms" name="carAms">
				<label for="carAm">무관</label>
			<c:forEach var="amList" items="${carAmList}">
				<input type="radio" id="carAms" name="carAms" value="${amList.carAm}"
				<c:if test="${searchVo.carAms==amList.carAm}">checked</c:if>>
				<label for="carAm">${amList.carAm}</label>
			</c:forEach>
		</div>
	</form>
	
</div>
