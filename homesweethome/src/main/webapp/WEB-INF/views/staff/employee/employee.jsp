<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/employee.css">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style2.css">
</head>


<!-- Main Content -->
<div class="ineerWrapper">
	<div class="content">
		<div class="search-container">
			<h2>사원관리</h2>
			<br />
			<hr />
			<br /> 
			<div class="search-bar">
			<button type="submit" class="regi_button" onclick="open_regist();">등　록</button>
				<button class="refresh-button">⟳&nbsp;&nbsp;</button>
				<select class="sort-select" name="perPageNum" id="perPageNum">
					<option class="font" value="10"  ${pageMaker.perPageNum eq 10 ? 'selected':'' } >정렬개수</option>
					<option class="font" value="20" ${pageMaker.perPageNum eq 20 ? 'selected':'' }>20개씩</option>
					<option class="font" value="30" ${pageMaker.perPageNum eq 30 ? 'selected':'' }>30개씩</option>
				</select>
				<select class="sort-select" name="searchType" id="searchType">
					<option value="">전체</option>
					<option class="font" value="i" ${pageMaker.searchType eq 'i' ? 'selected':'' }>사원아이디</option>
					<option class="font" value="n" ${pageMaker.searchType eq 'n' ? 'selected':'' }>이름</option>
					<option class="font" value="p" ${pageMaker.searchType eq 'p' ? 'selected':'' }>전화번호</option>
					<option class="font" value="e" ${pageMaker.searchType eq 'e' ? 'selected':'' }>이메일</option>
				</select>
					<input type="text" class="search-input" placeholder="검색어를 입력해주세요." name="keyword" value="${pageMaker.keyword }"/>
				<button class="search-button" type="submit" onclick="search_list(1);">검색</button>
			</div> <!-- search-bar -->

			<table class="rece_table">
				<thead>
					<tr>
						<th>사원번호</th>
						<th>이름</th>
						<th>주소</th>
						<th>전화번호</th>
						<th>부서</th>
						<th>입사일</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty employeeList }">
						<tr>
							<td colspan="10" class="text-content">해당 내용이 없습니다.</td>
						</tr>
					</c:if>
					<c:if test="${not empty employeeList }">
						<c:forEach var="employee" items="${employeeList}">
							<fmt:formatDate var="joid_date" value="${employee.joid_date}" pattern="yyyy-MM-dd" />
							<c:url var="detailUrl" value="/staff/employee/detail">
								<c:param name="eid" value="${employee.eid}" />
							</c:url>
							<tr style="cursor: pointer;" onclick="detail_go('${detailUrl}');">
								<td>${employee.eid }</td>
								<td>${employee.name }</td>
								<td>${employee.department }</td>
								<td>${employee.phone }</td>
								<td>${employee.position }</td>
								<td>${joid_date }</td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
			<br/>
			<%@ include file="/WEB-INF/views/module/pagination.jsp"%>
		</div> <!-- search-container -->
	</div> <!-- content -->
</div> <!-- ineerWrapper -->

<script>
document.querySelector('.refresh-button').addEventListener('click', function() {
    // 검색어 입력창 초기화
    document.querySelector('.search-input').value = '';
    // 검색 유형 초기화 (첫 번째 옵션 "전체" 선택)
    document.querySelector('select[name="searchType"]').selectedIndex = 0;
    // 정렬 개수 초기화 (첫 번째 옵션 "정렬개수" 선택)
    document.querySelector('select[name="perPageNum"]').selectedIndex = 0;
    // 검색 리스트 다시 불러오기 (초기화된 값 적용)
    search_list(1, "", "", ""); 
});
</script>
<script>
	function detail_go(url){
	    window.location.href = url;
	}
	function open_regist() {
		window.open('/staff/employee/open_regist','사원등록','width=900,height=660');
	}
</script>

    
    
    
    