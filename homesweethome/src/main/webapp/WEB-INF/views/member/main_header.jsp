<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 상단 -->
	<header>
		<div class=header_inner>
			<!-- 상단 바 -->
			<div class="header_top">
				<div class="top_bar" >
					<img id="time_img" src="<%=request.getContextPath()%>/resources/image/time_1.png" alt="time">
						<span id="session-time" style="margin-right: 10px; font-size: 15px; color: #ffffff">60분</span>
					<button id="extend-btn" onclick="extendSession()">연장하기</button>
					
					<a href="#">로그아웃</a>
					<a href="#">우편함</a>
					<a href="/member/mypage/graceperiod">마이페이지</a>
				</div>
			</div>

			<div class="menu_inner">
				<div class="header_menu">
					<!-- 로고 -->
					<div class="logo">
						<img src="<%=request.getContextPath()%>/resources/image/logo.png"
							alt="Logo"> <a href="/member/main">HomeSweetHome</a>
					</div>
					
					<c:forEach items="${menuList }" var="menu">
	      				<li class="nav-item d-none d-sm-inline-block">
	       					 <a href="javascript:subMenu_go('${m_menu.mcode }');goPage('<%=request.getContextPath() %>${menu.murl }','${menu.mcode }');" 
	          				 class="nav-link">${menu.mname }</a>
	     				 </li>
    				</c:forEach>
					<!-- 메인메뉴 -->
					<ul class="menu_main">
						<li><a href="#">센터 소개</a></li>
						<li><a href="/member/animal">보호동물</a></li>
						<li><a href="/member/adoption/main">입양절차</a></li>
						<li><a href="/member/board/main">게시판</a></li>
						<li><a href="#">☰</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
