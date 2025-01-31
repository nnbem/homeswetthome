<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/staff_member.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member_style/slidebar.css">
</head>

<div class="content-wrapper">
	<div class="content-title">
		<h1>
			<b>공지사항</b>
		</h1>
	</div>
	<table class="detail-table">
		<thead>
			<tr>
				<th><label for="title">${notice.title }</label></th>
			</tr>
		</thead>
		<tbody>
			<fmt:formatDate var="regDate" value="${notice.regDate}" pattern="yyyy-MM-dd"/>
		<tr>
			<td>${regDate}</td>
		</tr>
		<tr>
			<td style="padding: 10%; font-size: 20px;">${notice.content }</td>
		</tr>
		</tbody>
	</table>
	<br />
	<div class="st-list-button-container">
		<button type="button" class="button" onclick="back_list();">목록</button>
	</div>
</div>
	
<script>
function back_list() {
	location.href="<%=request.getContextPath()%>/member/intro/notice";
}
</script>