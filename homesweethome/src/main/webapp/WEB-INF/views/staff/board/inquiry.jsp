<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="home.member.dto.MemberVO" %>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<body>

<div class="innerWrapper">

<!-- Main Content -->
<div class="content">
	<div class="search-container">
		<h2>1:1 문의</h2>
		<hr/>
		<form id="searchForm">
		<div class="search-bar" style="justify-content:flex-end;">
		<div class="left">
			<button id="back" class="back-btn">이 전</button>
		</div>
		<div class="right" >
			<button class="refresh-button">⟳&nbsp;&nbsp;</button>
		<select class="sort-select" name="perPageNum" id="perPageNum">
	    	<option value="10"  ${pageMaker.perPageNum eq 10 ? 'selected':'' } >정렬개수</option>
	  		<option value="20" ${pageMaker.perPageNum eq 20 ? 'selected':'' } >20개씩 정렬</option>
	  		<option value="30" ${pageMaker.perPageNum eq 30 ? 'selected':'' } >30개씩 정렬</option>
	  	</select>
	  	<select class="sort-select" name="searchType" id="searchType">
		    <option value=""  >검색구분</option>
	 		<option value="t" ${pageMaker.searchType eq 't' ? 'selected':'' } >제목</option>
	 		<option value="c" ${pageMaker.searchType eq 'c' ? 'selected':'' } >내용</option>
	 		<option value="i" ${pageMaker.searchType eq 'i' ? 'selected':'' } >작성자</option>								
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
					<th >번호</th>
					<th style="width:20%;">제목</th>
					<th style="width:30%;">내용</th>
					<th >작성자ID</th>
					<th >작성일</th>
					<th>답변일</th>
				</tr>
			</thead>
			<tbody>
			<c:if test="${empty boardList }">
				<tr>
					<td colspan="6" class="text-content">해당 내용이 없습니다.</td>
				</tr>
			</c:if>
			
			<c:if test="${not empty boardList}">
				<c:forEach var="board" items="${boardList}">
				    <fmt:formatDate var="regDate" value="${inquiry.regDate }, ${inquriry-request.regDate }" pattern="yyyy-MM-dd"/>
				    <c:url var="detailUrl" value="/staff/board/inquiry/detail">
				        <c:param name="mid" value="${member.mid}" />
				    </c:url>
				    
				    <tr onclick="location.href='${detailUrl}';" style="cursor:pointer;">
				        <td>${inquiry.ino}</td>
				        <td>${inquiry.title}</td>
				        <td>${inquiry.content}</td>
				        <td>${inquiry.regDate}</td>
				        <td>${inquiry-request.regDate}</td>
				    </tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
</div>
	<%@ include file="/WEB-INF/views/module/pagination.jsp" %>
</div>
</div>

<form id="pageForm" style="display: none;">
   <input type='text' name="page" value="" />
</form>


<script>
document.querySelector('.refresh-button').addEventListener('click', function(event) {
    // 검색 입력란과 선택 박스 초기화
    document.querySelector('.search-input').value = '';  // 검색어 초기화
    document.querySelectorAll('.sort-select').forEach(function(select) {
        select.value = 'all';  // 모든 select 박스를 '전체'로 초기화
    });
});

function select(page) {
	let perPageNum = document.querySelector('select[name="perPageNum"]').value;
	let searchType = document.querySelector('select[name="searchType"]').value;
	let keyword = document.querySelector('input[name="keyword"]').value;
    
    let searchForm = document.querySelector("#searchForm");
    let pageForm = document.querySelector("#pageForm");
    pageForm.page.value = page;
    
    searchForm.perPageNum.value=perPageNum;
    searchForm.searchType.value = searchType;
    searchForm.keyword.value = keyword;
    
    searchForm.submit();
    pageForm.submit();
}
</script>

<script>
	function regist_go() {
		document.getElementBtId("regist").addEventListener("clcik",
	function() {
			window.location.href = "/staff/board/notice/regist";
		});
	}
</script>