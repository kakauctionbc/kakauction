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
.headmenu {
	float: left;
}
.headmenu ul li{
	float: left;
	padding-right:20px;
	font-size:1.2em;
	font-weight: bold;
	margin-top: 40px;
	margin-left: 20px;
	
}
.headmenu ul li a{
	text-decoration: none;
	color: #646464;
}
.headmenu ul li a:hover{
	text-decoration: blink;
	font-weight: bold;
	color: black;
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

.headmenu:hover .dropdown-content {
	display: block;
}
</style>
</head>
<body>
	<div class="headmenu">
		<ul class="dropbtn">
			<li><a href="<%=request.getContextPath()%>/main/in">고객센터</a></li>
		</ul>
		<div class="dropdown-content">
			<a href="#">프로포즈</a> <a href="#">생일&amp;결혼기념일</a> <a href="#">공연&amp;전시&amp;졸업</a>
		</div>
	</div>
</body>
</html>