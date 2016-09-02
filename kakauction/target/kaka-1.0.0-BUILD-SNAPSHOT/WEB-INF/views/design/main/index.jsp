<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<script type="text/javascript">
$(function() {
		var icon = $('#iconone img');
		icon.hover(function() {
			icon.attr("src", icon.attr("src").replace(".png","Big.png"))
		}, function() {
			icon.attr("src", icon.attr("src").replace("Big.png",".png"))
		});
});
$(function() {
	var icon = $('#icontwo img');
	icon.hover(function() {
		icon.attr("src", icon.attr("src").replace(".png","Big.png"))
	}, function() {
		icon.attr("src", icon.attr("src").replace("Big.png",".png"))
	});
});
$(function() {
	var icon = $('#iconthree img');
	icon.hover(function() {
		icon.attr("src", icon.attr("src").replace(".png","Big.png"))
	}, function() {
		icon.attr("src", icon.attr("src").replace("Big.png",".png"))
	});
});
$(function() {
	var icon = $('#iconfour img');
	icon.hover(function() {
		icon.attr("src", icon.attr("src").replace(".png","Big.png"))
	}, function() {
		icon.attr("src", icon.attr("src").replace("Big.png",".png"))
	});
});
$(function() {
	var icon = $('#iconfive img');
	icon.hover(function() {
		icon.attr("src", icon.attr("src").replace(".png","Big.png"))
	}, function() {
		icon.attr("src", icon.attr("src").replace("Big.png",".png"))
	});
});
</script>
	<div id="mainicondiv">
		<ul>
			<li id="iconone"><a href=""><img
					src="${pageContext.request.contextPath }/img/sellNow.png"></a></li>
			<li id="icontwo"><a href=""><img
					src="${pageContext.request.contextPath }/img/enterCar.png"></a></li>
			<li id="iconthree"><a href=""><img
					src="${pageContext.request.contextPath }/img/buyNow.png"></a></li>
			<li id="iconfour"><a href=""><img
					src="${pageContext.request.contextPath }/img/joinAuction1.png"></a></li>
			<li id="iconfive"><a href=""><img
					src="${pageContext.request.contextPath }/img/joinAuction2.png"></a></li>
		</ul>
	</div>
	<div id="realtime">
		<div id="realtimehead">
			<p id="text">실시간 경매 현황</p>
			<p id="more">
				<a href="">MORE▶</a>
			</p>
		</div>
		<table id="realtimetable">
			<tr id="align_center">
				<th colspan="2">제939차 경매 (2016.08.31)</th>
			</tr>
			<tr id="align_center">
				<td>전체</td>
				<td>0</td>
			</tr>
			<tr id="align_center">
				<td>승용</td>
				<td>0</td>
			</tr>
			<tr id="align_center">
				<td>suv</td>
				<td>0</td>
			</tr>
			<tr id="align_center">
				<td>승합</td>
				<td>0</td>
			</tr>
			<tr id="align_center">
				<td>화물</td>
				<td>0</td>
			</tr>
			<tr id="align_center">
				<td>기타</td>
				<td>0</td>
			</tr>
		</table>
		<div id="realtimeslide"></div>
	</div>
	<div id="mainwrap">
		<div id="quickservice">
			<div id="quickservicehead">
				<p id="text">빠른 서비스</p>
			</div>
			<div>
				<p>이미지</p>
			</div>
		</div>
		<div id="notice">
			<div id="noticehead">
				<p id="text">공지사항</p>
				<p id="more">
					<a href="">MORE▶</a>
				</p>
			</div>
			<div>
				<p>공지사항</p>
			</div>
		</div>
		<div id="schedule">
			<div id="schedulehead">
				<p id="text">일정안내</p>
				<p id="more">
					<a href="">MORE▶</a>
				</p>
			</div>
			<div>
				<p>일정안내</p>
			</div>
		</div>
	</div>
</div>
</body>
<!-- <script>
		var show;
		var slideIndex = 1;
		showSlides(slideIndex);

		function plusSlides(n) {
			clearTimeout(show);
			showSlides(slideIndex += n - 1);
		}

		function currentSlide(n) {
			clearTimeout(show);
			showSlides(slideIndex = n);
		}

		function showSlides(n) {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("dot");
			if (n > slides.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = slides.length
			}
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
			slideIndex++;
			if (slideIndex > slides.length) {
				slideIndex = 1
			}
			show = setTimeout(showSlides, 3000);
		}
	</script> -->
<%@ include file="../inc/bottom.jsp"%>
