<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HomeSweetHome</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member_style/m_main.css">
</head>
<body>
	<header>
		<div class="inner">
			<div class="logo">
				<img src="<%=request.getContextPath()%>/resources/image/logo.png" alt="Logo"> <span>HomeSweetHome</span>
			</div>
			
			<ul id="top">
				<li><a href="#">센터소개</a>
				<li><a href="#">보호동물</a>
				<li><a href="#">입양절차</a>
				<li><a href="#">게시판</a>
			</ul>
			<ul class="menu">
				<li><a href="#">로그인</a>
				<li><a href="#">회원가입</a>
				<li><a href="#" style="display: none;">우편함</a>
				<li><a href="#" style="display: none;">마이페이지</a>
			</ul>
		</div>
	</header>

</body>
</html>