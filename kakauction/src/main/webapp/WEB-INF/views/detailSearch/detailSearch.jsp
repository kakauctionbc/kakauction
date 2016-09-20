<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	$(".accordion").click(function() {
		$( this ).toggleClass( "active" );
		$( this ).next().toggleClass( "show" );
	});
	
</script>
<style type="text/css">
	.accordion{
		margin-left:150px;
		width: 1000px;
		height: 30px;
	}
</style>
 <div>
	<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
	<p style="color: white; font-size: 2.0em; padding-left: 20px;">상세검색</p>
	<br>
		<button class="accordion">가격</button>
			<div class="panel">
				최소가 <input type="text" name="auctionFirstprice" size="45">만원 ~
				최대가 <input type="text" name="auctionFirstprice2" size="45">만원
			</div>
			
	 	<button class="accordion">차종</button>
			<div class="panel">
				<c:forEach var="cslist" items="${carsizeList}" varStatus="vs">
					<div><p>${cslist.carSize}</p></div>
					<input type="hidden" name="carSize${vs.index}" id="carSize${vs.index}" value="${csList.carSize}">
				</c:forEach>
			</div> 
		
		<button class="accordion">연료</button>
			<div class="panel">
				<c:forEach var="cglist" items="${cargasList}" varStatus="vs">
					<div><p>${cglist.carGas}</p></div>
					<input type="hidden" name="carGas${vs.index}" id="carGas${vs.index}" value="${cglist.carGas}">
				</c:forEach>
			</div>
		
		<button class="accordion">주행거리</button>
			<div class="panel">
				<input type="text" name="carDist" size="45">km
			</div>
	
		<button class="accordion">주행거리</button>
			<div class="panel">
				<input type="text" name="carDist">
			</div>
</div>