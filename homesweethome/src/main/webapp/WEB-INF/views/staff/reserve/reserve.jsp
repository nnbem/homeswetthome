<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/adoption.css">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style2.css">
</head>


<!-- Main Content -->
<div class="ineerWrapper">
	<div class="content">
		<div class="search-container">
			<h2>방문예약신청관리</h2>
			<br />
			<hr />
			<br /> 
			<div class="search-bar">
				<button class="refresh-button">⟳&nbsp;&nbsp;</button>
					<select class="sort-select">
						<option value="">정렬개수</option>
						<option value="10" ${pageMaker.perPageNum eq 10 ? 'seleceted':'' }>10개씩</option>
						<option value="20" ${pageMaker.perPageNum eq 20 ? 'seleceted':'' }>20개씩</option>
						<option value="30" ${pageMaker.perPageNum eq 30 ? 'seleceted':'' }>30개씩</option>
					</select>
					<select class="sort-select">
						<option value="">전체</option>
						<option value="m" ${pageMaker.searchType eq 'm' ? 'selected':'' }>아이디</option>
						<option value="p" ${pageMaker.searchType eq 'p' ? 'selected':'' }>전화번호</option>
					</select>
				
				<input type="text" class="search-input" placeholder="검색어를 입력해주세요.">
				<button class="search-button" onclick="select(1);" >검 색</button>
			</div> <!-- search-bar -->

			<table class="rece_table">
				<thead>
					<tr>
						<th>방문예약번호</th>
						<th>신청 날짜</th>
						<th>내용</th>
						<th>아이디</th>
						<th>전화번호</th>
						<th>방문예정일</th>
						<th>승인여부</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty reserveList }">
						<tr>
							<td colspan="10" class="text-content">해당 내용이 없습니다.</td>
						</tr>
					</c:if>

					<c:forEach var="reserve" items="${reserveList}">
						<fmt:formatDate var="regDate" value="${reserve.regDate}" pattern="yyyy-MM-dd" />
						<fmt:formatDate var="schedule" value="${reserve.schedule}" pattern="yyyy-MM-dd" />
						
						<c:url var="detailUrl" value="/staff/reserve/detail">
							<c:param name="rsno" value="${reserve.rsno}" />
						</c:url>
						<tr style="cursor: pointer;" onclick="detail_go('${detailUrl}');">
							<td>${reserve.rsno }</td>
							<td>${regDate}</td>
							<td>${reserve.content }</td>
							<td>${reserve.mid }</td>
							<td>${reserveDetail.phone }
							<td>${schedule }</td>
							<td>${reserve.status }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<br />
			<%@ include file="/WEB-INF/views/module/pagination.jsp"%>
		</div> <!-- search-container -->
	</div> <!-- content -->
</div> <!-- ineerWrapper -->

<script>
function detail_go(url) {
	// 전달받은 URL로 이동
	window.location.href = url;
}
</script>

    
    
    
    