<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="home.member.dto.MemberVO" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/staff_member.css">
</head>

<body>
<div class="innerWrapper">
	<!-- Sidebar -->
	<div class="sidebar">
		<h1><b>회원관리</b></h1>
		<div class="sideMenu">
			<ul class="sideMenu list">
				<li class="list">
					<a href="/staff/member/list">
						<b>가입회원</b>
					</a>
				</li>
			</ul>
		</div>
	</div>

	<!-- Main Content -->
	<div class="content">
		<h2>가입회원-상세</h2>
		<hr />
		<form action="/staff/member/list" method="post" class="form">
			<div class="image-preview">
				<div class="image-img" style="display: flex; justify-content: center; align-items: center; padding: 2%;">
					<c:if test="${not empty member.picture}">
						<img src="${pageContext.request.contextPath}/resources/image/member/${member.mid}.jpg" alt="회원 사진"
							 style="width:27%; height:27%; object-fit: cover; padding:2%;">
					</c:if>
					<c:if test="${empty member.picture}">
						<span>이미지 없음</span>
					</c:if>
				</div>
			</div>
			<div class="form-group">
				<label for="id">아이디</label>
				<input type="text" id="mid" name="mid" value="${member.mid}" readonly>
			</div>
			<div class="form-group">
				<label for="name">이름</label>
				<input type="text" id="name" name="name"value="${member.name}" readonly>
			</div>
			<div class="form-group">
				<label for="phone">전화번호</label>
				<input type="text" id="phone" name="phone" value="${member.phone}" readonly>
			</div>
			<div class="form-group">
				<label for="birth">생년월일</label>
				<input type="text" id="birth" name="birth" value="${member.formatBirth}" readonly>
			</div>
			<div class="form-group">
				<label for="sex">성별</label>
				<input type="text" id="sex" name="sex" value="${member.formatSex}" readonly>
			</div>
			<div class="form-group">
				<label for="address">주소</label>
				<input type="text" id="address" name="address" value="${member.address}" readonly>
			</div>
			<div class="form-group">
				<label for="mail">이메일</label>
				<input type="text" id="mail" name="email" value="${member.email}" readonly>
			</div>
			<div class="form-group">
				<label for="complete_Date">입양일자</label>
				<input type="text" id="complete_Date" name="complete_Date" value="${complete_Date}" readonly>
			</div>
			<br/>
			<div class="button-container">
				<button type="submit" class="button">목록</button>
			</div>
		</form>
	</div>
</div>