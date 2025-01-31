<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/receive.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style2.css">
</head>


<!-- Main Content -->
<div class="ineerWrapper">
	<div class="content">
		<div class="search-container">
			<h2>입양신청관리</h2>
			<br />
			<hr />
			<br />
			<div class="search-bar">
				<!-- <button type="submit" class="regi_button" onclick="open_regist();">등
					록</button> -->
				<button class="refresh-button">⟳&nbsp;&nbsp;</button>
				<select class="sort-select">
					<option value="">정렬개수</option>
					<option value="10" ${pageMaker.perPageNum eq 10 ? 'seleceted':'' }>10개씩</option>
					<option value="20" ${pageMaker.perPageNum eq 20 ? 'seleceted':'' }>20개씩</option>
					<option value="30" ${pageMaker.perPageNum eq 30 ? 'seleceted':'' }>30개씩</option>
				</select> <select class="sort-select">
					<option value="">전체</option>
					<option value="i" ${pageMaker.searchType eq 'i' ? 'selected':'' }>동물칩번호</option>
					<option value="m" ${pageMaker.searchType eq 'm' ? 'selected':'' }>아이디</option>
					<option value="s" ${pageMaker.searchType eq 's' ? 'selected':'' }>상태</option>
				</select> <input type="text" class="search-input" placeholder="검색어를 입력해주세요."
					value="${pageMaker.keyword }">
				<button class="search-button" onclick="select(1);">검 색</button>
			</div>
			<!-- search-bar -->

			<table class="rece_table">
				<thead>
					<tr>
						<th>입양번호</th>
						<th>제목</th>
						<th>신청 날짜</th>
						<th>신청자아이디</th>
						<th>동물칩번호</th>
						<th>신청상태</th>
					</tr>
				</thead>


				<tbody>
					<c:if test="${empty adoptionList }">
						<tr>
							<td colspan="10" class="text-content">해당 내용이 없습니다.</td>
						</tr>
					</c:if>

					<c:forEach var="adoption" items="${adoptionList}">
						<fmt:formatDate var="regDate" value="${adoption.regDate}"
							pattern="yyyy-MM-dd" />

						<c:url var="detailUrl" value="/staff/adoption/detail">
							<c:param name="ano" value="${adoption.ano}" />
						</c:url>
						<tr style="cursor: pointer;" onclick="detail_go('${detailUrl}');">
							<td>${adoption.ano }</td>
							<td>${adoption.title }</td>
							<td>${regDate }</td>
							<td>${adoption.mid }</td>
							<td>${adoption.aid }</td>
							<td>${adoption.status }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<br />
			<%@ include file="/WEB-INF/views/module/pagination.jsp"%>
		</div>
		<!-- search-container -->
	</div>
	<!-- content -->
</div>
<!-- ineerWrapper -->
<script>
function detail_go(url) {
    if (url) {
        window.location.href = url;
    } else {
        alert("올바른 게시글 URL이 아닙니다.");
    }
}
</script>






