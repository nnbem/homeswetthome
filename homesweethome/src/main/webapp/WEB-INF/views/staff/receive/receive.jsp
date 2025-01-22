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
			<h2>인계관리</h2>
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
					<option value="rc" ${pageMaker.searchType eq 'ac' ? 'selected':'' }>동물칩번호</option>
					<option value="s" ${pageMaker.searchType eq 's' ? 'selected':'' }>발견장소</option>
				</select>
					<input type="text" class="search-input" placeholder="검색어를 입력해주세요."
					value="${pageMaker.keyword }">
				<button class="search-button" onclick="select(1);" >검 색</button>
			</div>
			<!-- search-bar -->

			<table class="rece_table">
				<thead>
					<tr>
						<th>인계번호</th>
						<th>발견장소</th>
						<th>동물칩번호</th>
						<th>발견날짜</th>
					</tr>
				</thead>

				<tbody>
					<c:if test="${empty receiveList }">
						<tr>
							<td colspan="10" class="text-content">해당 내용이 없습니다.</td>
						</tr>
					</c:if>

					<c:forEach var="receive" items="${receiveList}">
						<fmt:formatDate var="regDate" value="${receive.regDate}" pattern="yyyy-MM-dd" />
						
						<c:url var="detailUrl" value="/staff/receive/detail">
							<c:param name="rcno" value="${receive.rcno}" />
						</c:url>
						<tr style="cursor: pointer;" onclick="detail_go('${detailUrl}');">
							<td>${receive.rcno }</td>
							<td>${receive.spot }</td>
							<td>${receive.aid }</td>
							<td>${regDate}</td>
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
	function open_regist() {
		// 이동할 페이지 URL 설정
		window.location.href = "/staff/receive/regist"; // 여기에 이동할 페이지 경로를 넣으세요.
	}
	// 	function detail_go() {
	// 		// 이동할 페이지 URL 설정
	// 		window.location.href = "/staff/receive/detail"; // 여기에 이동할 페이지 경로를 넣으세요.
	// 	}
	function detail_go(url) {
		// 전달받은 URL로 이동
		window.location.href = url;
	}
</script>




