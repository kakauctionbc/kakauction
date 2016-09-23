<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	$(".accordion").click(function() {
		$( this ).toggleClass( "active" );
		$( this ).next().toggleClass( "show" );
	});
	
	$(document).ready(function(){
		$(".carSizes").click(function(){
		});
		$(".carGases").click(function(){
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
		<input type="hidden" name="auctionFirstprice" size="45" value="${DetailSearchVO.auctionFirstprice}">
		<input type="hidden" name="auctionFirstprice2" size="45" value="${DetailSearchVO.auctionFirstprice2}">
	</form>
	
	<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
	<p>상세검색</p>
 	<p class="accordion">차종</p>
		<div class="panel">
			<c:forEach var="cslist" items="${carsizeList}" varStatus="vs">
				<div class="carSizes" style="height: 25px;">
					<input type="checkbox" name="carSizes" id="carSizes${vs.index}" value="${cslist.carSize}">
					<label for="carSizes${vs.index}" id="laname">
					${cslist.carSize}
					</label>
				</div>
			</c:forEach>
		</div> 

	<p class="accordion">가격</p>
		<div class="panel">
			최소가 <input type="text" name="auctionFirstprice" size="45" value="${param.auctionFirstprice}">만원 ~
			최대가 <input type="text" name="auctionFirstprice2" size="45" value="${param.auctionFirstprice2}">만원
		</div>
	
	<p class="accordion">연료</p>
		<div class="panel">
			<c:forEach var="cglist" items="${cargasList}" varStatus="vs">
				<div class="carGases" style="height: 25px;">
					<input type="checkbox" name="carGases" id="carGas${vs.index}" value="${cglist.carGas}"
					<c:if test="${param.carGases[vs.index]==cglist.carGas}" >checked</c:if> >
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
				<input type="radio" id="carAms" name="carAms" value="${amList.carAm}">
				<label for="carAm">${amList.carAm}</label>
			</c:forEach>
		</div>
</div>
