<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="home.member.dto.Member_ListVO" %>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/views/module/adminlteSource.jsp" %>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
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
	<h2>가입회원</h2>
	<hr/>
	<form id="jobForm">
	<div class="search-bar" style="justify-content:flex-end;">
	    <button class="refresh-button">⟳&nbsp;&nbsp;</button>
	    <select class="sort-select" name="perPageNum" id="perPageNum">
	    	<option class="font" value="10"  ${pageMaker.perPageNum eq 10 ? 'selected':'' } >정렬개수</option>
	  		<option class="font" value="20" ${pageMaker.perPageNum eq 20 ? 'selected':'' } >20개씩 정렬</option>
	  		<option class="font" value="30" ${pageMaker.perPageNum eq 30 ? 'selected':'' } >30개씩 정렬</option>
	  	</select>
	    <select class="sort-select" name="searchType" id="searchType">
		    <option class="font" value=""  >검색구분</option>
	 		<option class="font" value="i" ${pageMaker.searchType eq 'i' ? 'selected':'' } >아이디</option>
			<option class="font" value="n" ${pageMaker.searchType eq 'n' ? 'selected':'' } >이름</option>
			<option class="font" value="e" ${pageMaker.searchType eq 'e' ? 'selected':'' } >이메일</option>			 									
		</select>
	
	    <input type="text" class="search-input" placeholder="검색어를 입력해주세요."
	    		name="keyword" value="${pageMaker.keyword }"/>
	    <button class="search-button" type="submit" onclick="search_list(1);">검색</button>
	</div>
	</form>

	<table class="member-table">
		<thead>
			<tr>
				<th style="width:10%;">회원ID</th>
				<th style="width:20%;">이름</th>
				<th style="width:20%;">전화번호</th> 
				<th style="width:15%;">이메일</th>
				<th style="width:17%;">가입날짜</th>
				<th>입양날짜</th> <!-- yyyy-MM-dd  -->
			</tr>
		</thead>
		<tbody>
			<c:if test="${empty member_List }">
				<tr>
					<td colspan="7" class="text-content">해당 내용이 없습니다.</td>
				</tr>
			</c:if>
		
			<c:if test="${not empty member_List}">
				<c:forEach var="member_List" items="${member_List}">
					<fmt:formatDate var="regDate" value="${member_List.regDate}" pattern="yyyy-MM-dd"/>
				    <fmt:formatDate var="complete_Date" value="${member_List.complete_Date}" pattern="yyyy-MM-dd"/>
				    <c:url var="detailUrl" value="/staff/member/detail">
				        <c:param name="mid" value="${member_List.mid}" />
				    </c:url>
				    
				    <tr onclick="location.href='${detailUrl}';" style="cursor:pointer;">
				        <td>${member_List.mid}</td>
				        <td>${member_List.name}</td>
				        <td>${member_List.phone}</td>
				        <td>${member_List.email}</td>
				        <td>${regDate}</td>
				        <td>${complete_Date}</td>
				    </tr>
				</c:forEach>
			</c:if>

		</tbody>
	</table>
</div>
</div>

<%@ include file="/WEB-INF/views/module/pagination.jsp" %>



<script>
document.querySelector('.refresh-button').addEventListener('click', function(event) {
    // 검색 입력란과 선택 박스 초기화
    document.querySelector('.search-input').value = '';  // 검색어 초기화
    document.querySelectorAll('.sort-select').forEach(function(select) {
        select.value = 'all';  // 모든 select 박스를 '전체'로 초기화
    });
});


</script>