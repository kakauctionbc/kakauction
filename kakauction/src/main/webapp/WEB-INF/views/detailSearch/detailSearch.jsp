<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	$(".accordion").click(function() {
		$( this ).toggleClass( "active" );
		$( this ).next().toggleClass( "show" );
	});
	
	$(document).ready(function(){
		var carSizes = [];
		var i = 0;
		$(".carSizes").click(function(){
			carSizes[i] = $(this).children().val();
			alert(carSizes[i]+"!");
			i++;
			/* $.ajax({
				url : "<c:url value='/auction/list.do'/>",
				data : {"carSizes":carSizes},
				type : "POST",
				dataType : "json",
				success : function(highVo) {
					highMember=highVo.buyerMemberId;
					auctionState=highVo.auctionState;
					if(auctionState=="END"){
						$("#nowHighPrice").html("종료된 경매 입니다").css("text-align","right");
						$("#goAuction").css("display","none");
						return;
					}
					$("#goAuction").show();
					$("#nowHighPrice").html(highVo.recordPrice+ "만원<br>"+highVo.buyerMemberId).css("text-align","right");
					if(sellerMemberId==buyerMemberId){
						$("#light").css("background","");
						return;
					}
					if(highMember==buyerMemberId){
						$("#light").css("background","#8eff67");
						$("#lightText").css("color", "black");
					}else{
						$("#light").css("background","");
						$("#lightText").css("color", "");
					}
				} ,
				error : function(xhr,status,error) {
					alert("에러=>"+ status+"message=>"+xhr.responseText+ ":"+ error);
				} 
			}); */
		});
		
	});
	
	
	
</script>
<style type="text/css">
	.accordion{
		margin-left:150px;
		width: 1000px;
		height: 30px;
	}
	.laname{
		border: 1px solid silver;
		width: 100px;
		height: 20px;
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
					<label for="carSizes${vs.index}" class="laname">${cslist.carSize}</label>
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
				<div><a href="#" style="height: 25px;">${cglist.carGas}</a></div>
				<input type="hidden" name="carGases" id="carGas${vs.index}" value="${cglist.carGas}">
			</c:forEach>
		</div>
	
	<button class="accordion">주행거리</button>
		<div class="panel">
			<input type="text" name="carDist">
		</div>
</div>
