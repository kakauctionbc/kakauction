<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/slide.css"/>
<script type="text/javascript">

	var slideIndex = 1;
	showSlides(slideIndex);

	function plusSlides(n) {
		showSlides(slideIndex += n);
	}

	function currentSlide(n) {
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
	}
	var slideIndex = 0;
	showSlides();

	function showSlides() {
	    var i;
	    var slides = document.getElementsByClassName("mySlides");
	    for (i = 0; i < slides.length; i++) {
	        slides[i].style.display = "none"; 
	    }
	    slideIndex++;
	    if (slideIndex> slides.length) {slideIndex = 1} 
	    slides[slideIndex-1].style.display = "block"; 
	    setTimeout(showSlides, 2000); // Change image every 2 seconds
	}
</script>


<div class="slideshow-container">
  <div class="mySlides fade">
    <img src="<%=request.getContextPath()%>/img/m01.jpg" style="width:100%">
  </div>

  <div class="mySlides fade">
    <img src="<%=request.getContextPath()%>/img/m02.jpg" style="width:100%">
  </div>

  <div class="mySlides fade">
    <img src="<%=request.getContextPath()%>/img/m03.jpg" style="width:100%">
  </div>

  <a class="prev" onclick="plusSlides(-2)">&#10094;</a>
  <a class="next" onclick="plusSlides(2)">&#10095;</a>
</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>