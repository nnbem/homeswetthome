<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="home.member.dto.SharingVO"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/board.css">
</head>

<!-- 본문 -->
<section>

	<div class="content-title">
		<h1>
			<b>정보공유</b>
		</h1>
	</div>
	<div class="content-body">
	<form id="searchForm">
		<div class="search-bar" style="justify-content:flex-end;">
		<div class="left">
			<button id="regist" class="regist-btn">등 록</button>
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
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>등록날짜</th> <!-- yyyy-MM-dd  -->
					<th>조회수</th>
				</tr>
							</thead>
			<tbody>
				<c:if test="${empty sharingList }">
					<tr>
						<td colspan="6" class="text-content">해당 내용이 없습니다.</td>
					</tr>
				</c:if>
			
			<c:if test="${not empty sharingList}">
				<c:forEach var="sharing" items="${sharingList}">
				    <fmt:formatDate var="regDate" value="${sharing.regDate}" pattern="yyyy-MM-dd"/>
				    <c:url var="detailUrl" value="/member/board/sharing/detail">
				        <c:param name="sno" value="${sharing.sno}" />
				    </c:url>
				    
				    <tr onclick="location.href='${detailUrl}';" style="cursor:pointer;">
				        <td>${sharing.sno}</td>
				        <td>${sharing.title}</td>
				        <td>${sharing.mid }</td>
				        <td>${regDate}</td>
				        <td>${sharing.viewcnt}</td>
				    </tr>
				</c:forEach>
			</c:if>
			</tbody>
		</table>
		<%@ include file="/WEB-INF/views/module/pagination.jsp" %>
	</div>
		
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	
</section>



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
	function goPage(url) {
        window.location.href = url;
    }
</script>