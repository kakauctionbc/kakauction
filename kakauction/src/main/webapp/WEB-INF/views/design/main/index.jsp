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
			<li id="iconone">
				<a href="<c:url value='/car/register.do'/>">
					<img src="${pageContext.request.contextPath }/img/enterCar.png">
				</a>
			</li>
			<li id="icontwo">
				<a href="<c:url value='/auction/list.do'/>">
					<img src="${pageContext.request.contextPath }/img/buyNow.png">
				</a>
			</li>
			<li id="iconthree">
				<a href="<c:url value='/auction/list.do'/>">
					<img src="${pageContext.request.contextPath }/img/joinAuction2.png">
				</a>
			</li>
			<li id="iconfour">
				<a href="<c:url value='/freeboard/list.do'/>">
					<img src="${pageContext.request.contextPath }/img/freeboard.png">
				</a>
			</li>
			<li id="iconfive">
				<a href="<c:url value='/notice/list.do'/>">
					<img src="${pageContext.request.contextPath }/img/notice.png">
				</a>
			</li>
		</ul>
	</div>
		<img src="${pageContext.request.contextPath }/img/hot_icon.png"
			id="hot_icon">
		<div id="realtime">
			<div id="realtimehead">
				<p id="text">실시간 경매 현황</p>
				<p id="more">
					<a href="<c:url value='/auction/list.do'/>">MORE▶</a>
				</p>
			</div>
			<table id="realtimetable" style="border-collapse: collapse">
				<tr id="align_center">
					<th colspan="3">제939차 경매 (2016.08.31)</th>
				</tr>
				<tr id="align_center">
					<td>전체</td>
					<td>0</td>
					<td></td>
				</tr>
				<tr id="align_center">
					<td>승용</td>
					<td>0</td>
					<td></td>
				</tr>
				<tr id="align_center">
					<td>suv</td>
					<td>0</td>
					<td></td>
				</tr>
				<tr id="align_center">
					<td>승합</td>
					<td>0</td>
					<td></td>
				</tr>
				<tr id="align_center">
					<td>화물</td>
					<td>0</td>
					<td></td>
				</tr>
				<tr id="align_center">
					<td>기타</td>
					<td>0</td>
					<td></td>
				</tr>
			</table>
			<div id="realtimeslide">
				<div id="realtimeslide_hot">
					<div class="mySlides fade">
						<img src="${pageContext.request.contextPath }/img/hot_car1.jpg" style="width: 220px; height: 217px">
					</div>
					<div class="mySlides fade">
						<img src="${pageContext.request.contextPath }/img/hot_car2.jpg" style="width: 220px; height: 217px">
					</div>
					<div class="mySlides fade">
						<img src="${pageContext.request.contextPath }/img/hot_car3.jpg" style="width: 220px; height: 217px">
					</div>
				</div>
			</div>
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
						<a href="<c:url value='/notice/list.do'/>">MORE▶</a>
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
						<a href="<c:url value='/auction/myAuctionList.do'/>">MORE▶</a>
					</p>
				</div>
				<div>
					<p>일정안내</p>
				</div>
			</div>
		</div>
	</div>
<script>
	var slideIndex = 0;
	showSlides();

	function showSlides() {
		var i;
		var slides = document.getElementsByClassName("mySlides");
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		slideIndex++;
		if (slideIndex > slides.length) {
			slideIndex = 1
		}
		slides[slideIndex - 1].style.display = "block";
		setTimeout(showSlides, 2000); // Change image every 2 seconds
	}
</script>
<%@ include file="../inc/bottom.jsp"%>
