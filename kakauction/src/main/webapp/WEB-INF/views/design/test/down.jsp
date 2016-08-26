<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.dropbtn {
    border-top: 1px solid silver;
    cursor: pointer;
    
}

.dropdown {
    position: relative;
    display: inline-block;
    width: 124px;
    height: 83px;
}

.dropdown-content {
    display: none;
    position: absolute;
    max-width: 121px;
    background: #465446;
    font-size: 0.9em;
}

.dropdown-content a {
    text-decoration: none;
    display: block;
    color: gray;
    padding-bottom: 10px;
}

.dropdown-content a:hover {
	text-decoration: none; 
	color: black;
}

.dropdown:hover .dropdown-content {
    display: block;
}

</style>
</head>
<body>
<div class="dropdown">
  <a href="/product/list.html?cate_no=28" class="dropbtn"><img src="<%=request.getContextPath()%>/img/handtied_menu_over.gif" id="cate_img_28" alt="꽃다발">
  <div class="dropdown-content">
    <a href="#">프로포즈</a>
    <a href="#">생일&amp;결혼기념일</a>
    <a href="#">공연&amp;전시&amp;졸업</a>
  </div>
</div>
</body>
</html>