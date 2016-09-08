<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
var slideIndex = 1;
window.onload = function () {
	showDivs(slideIndex);
}


function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  x[slideIndex-1].style.display = "block";
}
</script>
<style type="text/css">
	.pictureGroup{
		max-height:600px;
		max-width:800px;
		position:relative;
	}
	.mySlides{
		display:none;
		height:400px;
		width:250px;
		position:relative;
	}
</style>
<p>자동차 최초 등록일 :  ${acVo.carRegdate} / 조회수 : ${acVo.auctionReadCount}</p>
<table style="width: 850px;">
	<tr style="background: gray;">
		<td>물건관리번호 : ${acVo.auctionNoYear }${acVo.auctionNoCar }${acVo.auctionNo }</td>
	</tr>
	<tr>
		<td>
			<div class="w3-content" style="max-width: 800px; position: relative">
				<img class="mySlides" alt="${acVo.picture1}" src="<c:url value='/picture_upload/${acVo.picture1}'/>" style="width: 100%">
				<img class="mySlides" alt="${acVo.picture2}" src="<c:url value='/picture_upload/${acVo.picture2}'/>" style="width: 100%">
				<img class="mySlides" alt="${acVo.picture3}" src="<c:url value='/picture_upload/${acVo.picture3}'/>" style="width: 100%">
				<img class="mySlides" alt="${acVo.picture4}" src="<c:url value='/picture_upload/${acVo.picture4}'/>" style="width: 100%">
				<img class="mySlides" alt="${acVo.picture5}" src="<c:url value='/picture_upload/${acVo.picture5}'/>" style="width: 100%">
				<img class="mySlides" alt="${acVo.picture6}" src="<c:url value='/picture_upload/${acVo.picture6}'/>" style="width: 100%">
				<img class="mySlides" alt="${acVo.picture7}" src="<c:url value='/picture_upload/${acVo.picture7}'/>" style="width: 100%">
				<img class="mySlides" alt="${acVo.picture8}" src="<c:url value='/picture_upload/${acVo.picture8}'/>" style="width: 100%">
				<img class="mySlides" alt="${acVo.picture9}" src="<c:url value='/picture_upload/${acVo.picture9}'/>" style="width: 100%">
				<img class="mySlides" alt="${acVo.picture10}" src="<c:url value='/picture_upload/${acVo.picture10}'/>" style="width: 100%">
				<img class="mySlides" alt="${acVo.picture11}" src="<c:url value='/picture_upload/${acVo.picture11}'/>" style="width: 100%">
				<img class="mySlides" alt="${acVo.picture12}" src="<c:url value='/picture_upload/${acVo.picture12}'/>" style="width: 100%">
				<img class="mySlides" alt="${acVo.picture13}" src="<c:url value='/picture_upload/${acVo.picture13}'/>" style="width: 100%">
				<img class="mySlides" alt="${acVo.picture14}" src="<c:url value='/picture_upload/${acVo.picture14}'/>" style="width: 100%">
				<img class="mySlides" alt="${acVo.picture15}" src="<c:url value='/picture_upload/${acVo.picture15}'/>" style="width: 100%">
				<img class="mySlides" alt="${acVo.picture16}" src="<c:url value='/picture_upload/${acVo.picture16}'/>" style="width: 100%">
				<img class="mySlides" alt="${acVo.picture17}" src="<c:url value='/picture_upload/${acVo.picture17}'/>" style="width: 100%">
				<img class="mySlides" alt="${acVo.picture18}" src="<c:url value='/picture_upload/${acVo.picture18}'/>" style="width: 100%">
				<img class="mySlides" alt="${acVo.picture19}" src="<c:url value='/picture_upload/${acVo.picture19}'/>" style="width: 100%">
				<img class="mySlides" alt="${acVo.picture20}" src="<c:url value='/picture_upload/${acVo.picture20}'/>" style="width: 100%">
			
				<a class="w3-btn-floating" style="position: absolute; top: 45%; left: 0" onclick="plusDivs(-1)">❮</a>
				<a class="w3-btn-floating" style="position: absolute; top: 45%; right: 0" onclick="plusDivs(1)">❯</a>

			</div>

		</td>
	</tr>
</table>