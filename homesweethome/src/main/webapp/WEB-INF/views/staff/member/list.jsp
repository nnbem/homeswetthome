<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="home.member.dto.MemberVO" %>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
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
					<li class="list">
						<a href="/staff/member/deactivation">
							<b>탈퇴회원</b>
						</a>
					</li>
				</ul>
			</div>
		</div>

	<!-- Main Content -->
	<div class="content">
			<h2>가입회원</h2>
			<hr/>
			<div class="search-bar" style="justify-content:flex-end;">
				<button class="refresh-button">⟳&nbsp;&nbsp;</button>
				<select class="sort-select">
					<option value="all">전체</option>
					<option value="10" ${pageMaker.perPageNum eq 10 ? 'selected' : '' }>10개씩 정렬</option>
					<option value="20" ${pageMaker.perPageNum eq 20 ? 'selected' : '' }>20개씩 정렬</option>
					<option value="30" ${pageMaker.perPageNum eq 30 ? 'selected' : '' }>30개씩 정렬</option>
				</select>
				
				<select class="sort-select">
					<option value="all">전체</option>
					<option value="i" ${pageMaker.search eq i ? 'selected' : '' }>아이디</option>
				</select>
				<input type="text" class="search-input" placeholder="검색어를 입력해주세요." value="${pageMaker.keyword }"/>
				<button class="search-button">검색</button>
			</div>

			<table class="member-table">
				<thead>
					<tr>
						<th style="width:20%;">번호</th>
						<th style="width:20%;">회원ID</th>
						<th style="width:30%;">이름</th>
						<th>입양날짜</th> <!-- yyyy-MM-dd  -->
					</tr>
				</thead>
				<tbody>
					<!-- <tr>
					    <td>1</td>
					    <td><a href="/staff/member/list/detail" style="text-decoration: none; color: inherit;">nana</a></td>
					    <td>2024-12-01</td>
					    <td>2024-12-29</td>
					</tr> -->
					<c:if test="${empty memberList }">
						<tr>
							<td colspan="10" class="text-content">해당 내용이 없습니다.</td>
						</tr>
					</c:if>
					
					<c:if test="${not empty memberList }">
						<c:forEach var="member" items="${memberList }">
							
						</c:forEach>
					</c:if>
				</tbody>
			</table>
		</div>
	</div>