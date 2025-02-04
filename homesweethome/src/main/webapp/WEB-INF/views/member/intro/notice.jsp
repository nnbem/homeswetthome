<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="home.staff.dto.NoticeVO" %>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/views/module/adminlteSource.jsp" %>

<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/board.css">
</head>

	<div class="content-title">
		<h1>
			<b style="font-size: 32px;">공지사항</b>
		</h1>
	</div>
	<div class="content-body">
	<form id="searchForm">
		<div class="search-bar" style="padding: -5%; margin-left: 51%;">
			<button class="refresh-button">⟳&nbsp;&nbsp;</button>
		<select class="sort-select" name="perPageNum" id="perPageNum">
	    	<option class="font" value="10"  ${pageMaker.perPageNum eq 10 ? 'selected':'' } >정렬개수</option>
	  		<option class="font" value="20" ${pageMaker.perPageNum eq 20 ? 'selected':'' } >20개씩 정렬</option>
	  		<option class="font" value="30" ${pageMaker.perPageNum eq 30 ? 'selected':'' } >30개씩 정렬</option>
	  	</select>
	 	<select class="sort-select" name="searchType" id="searchType">
		    <option class="font" value=""  >검색구분</option>
	 		<option class="font" value="t" ${pageMaker.searchType eq 't' ? 'selected':'' } >제목</option> 									
		</select>
		
		<input type="text" class="search-input" placeholder="검색어를 입력해주세요."
	    		name="keyword" value="${pageMaker.keyword }"/>
	    <button class="search-button" type="submit" onclick="search_list(1);">검색</button>
		</div>
	</form>
	
		<table class="member-table">
			<thead>
				<tr>
				<th style="width:10%;">번호</th>
				<th style="width:60%;">제목</th>
				<th style="width:20%;">등록날짜</th> <!-- yyyy-MM-dd  -->
				<th>조회수</th>
			</tr>
			</thead>
			<tbody>
			<c:if test="${empty noticeList }">
				<tr>
					<td colspan="5" class="text-content">해당 내용이 없습니다.</td>
				</tr>
			</c:if>
		
		<c:if test="${not empty noticeList}">
			<c:forEach var="notice" items="${noticeList}">
			    <fmt:formatDate var="regDate" value="${notice.regDate}" pattern="yyyy-MM-dd"/>
			    <c:url var="detailUrl" value="/member/intro/notice/detail">
			        <c:param name="nno" value="${notice.nno}" />
			    </c:url>
			    
			    <tr onclick="location.href='${detailUrl}';" style="cursor:pointer;">
			        <td>
						<c:choose>
				            <c:when test="${notice.pin == 1}">
				                <span style="color: red; font-family: NanumSquare_ac;">공지</span>
				            </c:when>
				            <c:otherwise> ${notice.nno} </c:otherwise>
				        </c:choose>
					</td>
			        <td style="text-align:left;">${notice.title}</td>
			        <td>${regDate}</td>
			        <td>${notice.viewcnt}</td>
			    </tr>
			</c:forEach>
		</c:if>
		
		</tbody>
	</table>
	<br/>
	<%@ include file="/WEB-INF/views/module/pagination.jsp" %>
	<br/>
</div>
<br/>
<br/>
<br/>
<br/>
<br/>

<script>
document.querySelector('.refresh-button').addEventListener('click', function(event) {
    // 검색 입력란과 선택 박스 초기화
    document.querySelector('.search-input').value = '';  // 검색어 초기화
    document.querySelectorAll('.sort-select').forEach(function(select) {
        select.value = 'all';  // 모든 select 박스를 '전체'로 초기화
    });
});


</script>

