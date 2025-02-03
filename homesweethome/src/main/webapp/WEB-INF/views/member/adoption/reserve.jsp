<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/slidebar.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/reserve.css">
</head>


<div class="content-title">
	<h1>
		<b>센터방문예약</b>
	</h1>
</div>
<div class="info-box">
	<img
		src="<%=request.getContextPath()%>/resources/image//adoption/caution_1.png"
		alt="주의"> HomeSweetHome 센터에 방문하시기 전에 예약 해주세요.
</div>
<div class="content-body">


	<div class="calendar-container">
		<iframe
			src="https://calendar.google.com/calendar/embed?showTitle=0&showNav=0&showDate=0"
			frameborder="0" class="calendar-iframe"> </iframe>
	</div>
	<div class="button-container">
		<a href="/member/adoption/reserve/form" class="action-button">예약하기
			→</a>
	</div>
</div>
<br/>
<br/>
<br/>
<br/>
<br/>