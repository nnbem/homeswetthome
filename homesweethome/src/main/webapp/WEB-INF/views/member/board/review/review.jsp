<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"  href="<%=request.getContextPath()%>/resources/css/member_style/board.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/views/module/adminlteSource.jsp" %>
</head>

<!-- 본문 -->

<div class="content-title">
<h1>
	<b>입양후기</b>
</h1>
</div>
<div class="content-body">
	<div class="search-bar">
		<div class="left">
	           <button onclick="regist_go();" id="regist" class="regist-btn" style="padding: 10px; width: 80px; font-size: 14px; text-align: center;">등 록</button>
		</div>
		<form id="searchForm">
			<div class="right" >
				<button class="refresh-button">⟳&nbsp;&nbsp;</button>
				<select name="perPageNum" class="sort-select" id="perPageNum">
					<option value="10" ${pageMaker.perPageNum==10 ? 'selected':'' }>정렬개수</option>
					<option value="20" ${pageMaker.perPageNum==20 ? 'selected':'' }>20개씩</option>
					<option value="30" ${pageMaker.perPageNum==30 ? 'selected':'' }>30개씩</option>
					<option value="50" ${pageMaker.perPageNum==50 ? 'selected':'' }>50개씩</option>
				</select>
				<select class="sort-select" name="searchType" id="searchType">
					<option value="tc" ${pageMaker.searchType eq 'tc'? 'selected':''}>전체</option>
					<option value="t" ${pageMaker.searchType eq 't'? 'selected':'' }>제목</option>
					<option value="c" ${pageMaker.searchType eq 'c'? 'selected':'' }>내용</option>
				</select> 
				<input type="text" class="search-input" name="keyword" placeholder="검색어를 입력해주세요." value="${pageMaker.keyword}">
				<button class="search-button" id="searchBtn" onclick="select(1);">검색</button>
			</div>
		</form>
	</div>

	<table class="member-table">
	   <thead>
	      <tr>
	         <th>번호</th>
	         <th>제목</th>
	         <th>작성자ID</th>
	         <th>등록날짜</th>
	         <th>좋아요</th>
	         <th>조회수</th>
	      </tr>
	   </thead>
		<tbody>
			<c:if test="${empty reviewList}">
				<td colspan="6">해당내용이 없습니다.</td>
			</c:if>
			<c:if test="${not empty reviewList }">
				<c:forEach items="${reviewList }" var="review">
					<tr onclick="location.href='review/detail?rno=${review.rno}'" style="cursor: pointer;">
						<td>${review.rno }</td>
						<td>${review.title }</td>
						<td>${review.mid }</td>
						<td><fmt:formatDate value="${review.created }" pattern="yyyy-MM-DD"/> </td>
						<td>${review.likenum }</td>
						<td>${review.viewcount }</td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
	<br/>
      <%@ include file="/WEB-INF/views/module/module_s/pagination.jsp"%>
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
	        select.value = 'tc';  // 모든 select 박스를 '전체'로 초기화
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
		window.open('/member/board/review/regist', '글등록',
		'width=900, height=700, resizable=yes, scrollbars=yes');
	}

</script>    
      
      
      
      
      
      

      