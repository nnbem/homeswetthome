<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="home.staff.dto.NoticeVO"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
</head>
<body>

<div class="innerWrapper">
	

<!-- Main Content -->
<div class="content">
	<div class="search-container">
		<h2>공지사항</h2>
		<hr />
		<div class="a-style">
			<a href="javascript:void(0);" onclick="goPage('/staff/board/report')">신고글 →</a>
			<a href="javascript:void(0);" onclick="goPage('/staff/board/review')" style="padding-left:2%;">연락 필요 사용자 →</a>
			<a href="javascript:void(0);" onclick="goPage('/staff/board/inquiry')" style="padding-left:2%;">1:1 문의 →</a>
		</div>
		<form id="searchForm">
		<div class="search-bar" style="justify-content:flex-end;">
		<div class="left">
			<button id="regist" class="regist-btn" onclick="regist_go();">등 록</button>
		</div>
		<div class="right" >
		    <button class="refresh-button">⟳&nbsp;&nbsp;</button>
		    <select class="sort-select" name="perPageNum" id="perPageNum">
		    	<option class="font" value="10"  ${pageMaker.perPageNum eq 10 ? 'selected':'' } >정렬개수</option>
		  		<option class="font" value="20" ${pageMaker.perPageNum eq 20 ? 'selected':'' } >20개씩 정렬</option>
		  		<option class="font" value="30" ${pageMaker.perPageNum eq 30 ? 'selected':'' } >30개씩 정렬</option>
		  	</select>
		    <select class="sort-select" name="searchType" id="searchType">
			    <option class="font" value=""  >검색구분</option>
		 		<option class="font" value="t" ${pageMaker.searchType eq 't' ? 'selected':'' } >제목</option>
				<option class="font" value="c" ${pageMaker.searchType eq 'c' ? 'selected':'' } >내용</option>
				<option class="font" value="e" ${pageMaker.searchType eq 'e' ? 'selected':'' } >작성자</option>	 									
			</select>
		
		    <input type="text" class="search-input" placeholder="검색어를 입력해주세요."
		    		name="keyword" value="${pageMaker.keyword }"/>
		    <button class="search-button" type="submit" onclick="select(1);">검색</button>
		</div>
		</div>
		</form>
		
		<table class="member-table">
			<thead>
				<tr>
					<th style="width:10%;">번호</th>
					<th style="width:45%;">제목</th>
					<th style="width:20%;">작성자</th>
					<th style="width:15%;">등록날짜</th> <!-- yyyy-MM-dd  -->
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty noticeList }">
					<tr>
						<td colspan="6" class="text-content">해당 내용이 없습니다.</td>
					</tr>
				</c:if>
			
			<c:if test="${not empty noticeList}">
				<c:forEach var="notice" items="${noticeList}">
				    <fmt:formatDate var="regDate" value="${notice.regDate}" pattern="yyyy-MM-dd"/>
				    <c:url var="detailUrl" value="/staff/board/notice/detail">
				        <c:param name="nno" value="${notice.nno}" />
				    </c:url>
				    
				    <tr onclick="location.href='${detailUrl}';" style="cursor:pointer;">
				        <td>
							<c:choose>
					            <c:when test="${notice.pin == 1}">
					                <span style="color: red;">공지</span>
					            </c:when>
					            <c:otherwise> ${notice.nno} </c:otherwise>
					        </c:choose>
						</td>
				        <td style="text-align:left;">${notice.title}</td>
				        <td>${notice.eid }</td>
				        <td>${regDate}</td>
				        <td>${notice.viewcnt}</td>
				    </tr>
				</c:forEach>
			</c:if>
			</tbody>
		</table>

	</div>
	<%@ include file="/WEB-INF/views/module/pagination.jsp" %>
</div>
</div>

<script>
document.querySelector('.refresh-button').addEventListener('click', function(event) {
    // 검색 입력란과 선택 박스 초기화
    document.querySelector('.search-input').value = '';  // 검색어 초기화
    document.querySelectorAll('.sort-select').forEach(function(select) {
        select.value = 'all';  // 모든 select 박스를 '전체'로 초기화
    });
});


</script>

<script>
function regist_go() {
	window.open('/staff/board/notice/regist', '글등록',
	'width=900, height=700, resizable=yes, scrollbars=yes');
}



</script>