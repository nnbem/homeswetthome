<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="home.staff.dto.NoticeVO"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/staff_member.css">
</head>

<body>

<div class="innerWrapper">

<!-- Main Content -->
<div class="content">
	<div class="search-container">
		<h2>공지사항</h2>
		<hr/>

		<table class="detail-table">
			<thead>
				<tr>
					<th id="title">${notice.title }
						<div class="st-button-container">
							<button type="submit" class="button">수정<!-- summernote구현 --></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="submit" class="button" onclick="delete_go();">삭제</button>
						</div>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td id="regDate">
						<fmt:formatDate value="${notice.regDate }" pattern="yyyy-MM-dd"/>
					</td>
				</tr>
				<tr>
					<td id="${notice.content }" style="padding: 10%; font-size: 20px;">
						
					</td>
				</tr>
			</tbody>
		</table>
		<br />
		<div class="st-list-button-container">
			<button type="button" class="button" onclick="back_list();">목록</button>
		</div>
	</div>
</div>

</div>

<script>
function delete_go() {
	if (confirm("정말로 삭제하시겠습니까?")) {
		// "확인"을 눌렀을 때 실행할 코드
		alert("삭제가 완료되었습니다.");
		location.href="<%=request.getContextPath()%>/staff/board/notice";
	} else {
		// "취소"를 눌렀을 때 실행할 코드
		alert("글을 삭제하지 않습니다.");
		location.href="<%=request.getContextPath()%>/staff/board/notice/detail";
	}
	
}

function back_list() {
	location.href="<%=request.getContextPath()%>/staff/board/notice";
}
</script>