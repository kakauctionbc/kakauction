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
		height: 30px;
	}
	label{
		text-align: center;
		font-size: 15px;
		border: 1px solid silver;
	}
</style>
<div id="mySidenav" class="sidenav">
	<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
	<p style="color: white; font-size: 2.0em; padding-left: 20px;">상세검색</p>
 	<button class="accordion">차종</button>
		<div class="panel">
			<c:forEach var="cslist" items="${carsizeList}" varStatus="vs">
				<div class="carSizes" style="height: 25px;">
					<input type="checkbox" name="carSizes" id="carSizes${vs.index}" value="${cslist.carSize}">
					<label for="carSizes${vs.index}" class="laname" style="width: 200px;">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					${cslist.carSize}
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</label>
				</div>
			</c:forEach>
		</div> 

	<button class="accordion">가격</button>
		<div class="panel">
			최소가 <input type="text" name="auctionFirstprice" size="45">만원 ~
			최대가 <input type="text" name="auctionFirstprice2" size="45">만원
		</div>
	
	<button class="accordion">연료</button>
		<div class="panel">
			<c:forEach var="cglist" items="${cargasList}" varStatus="vs">
				<div class="carGases" style="height: 25px;">
					<input type="checkbox" name="carGases" id="carGas${vs.index}" value="${cglist.carGas}">
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
	
	<button class="accordion">주행거리</button>
		<div class="panel">
			<input type="text" name="carDist">
		</div>
</div>
