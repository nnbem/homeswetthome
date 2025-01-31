<%@ page import="home.staff.dto.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/staff_member.css">
</head>

<body>

<div class="innerWrapper">
<div class="content">
		<div class="content-title" >
		<h1>
			<b>공지사항</b>
		</h1>
		<div class="st-button-container">
			<button type="submit" class="button" onclick="modify('${notice.nno}');">수정</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button type="submit" class="button" onclick="delete_go();">삭제</button>
		</div>
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
					<td>${notice.eid}</td>
				</tr>
				<tr>
					<td>${regDate}</td>
				</tr>
				<tr>
					<td style="padding: 10%; font-size: 20px;">
						${notice.content }
					</td>
				</tr>
			</tbody>
		</table>
		<br />
		
		<form id="deleteForm" method="post" action="<%=request.getContextPath()%>/staff/board/notice">
		    <input type="hidden" name="nno" value="${notice.nno}">
		</form>
		
		<div class="st-list-button-container">
			<button type="button" class="button" onclick="back_list();">목록</button>
		</div>
	</div>
</div>


<script>

function modify(nno) {
	location.href="modify?nno=" + nno;
}

function delete_go() {
	location.href="remove?nno=${notice.nno}";
}

function delete_go() {
	if (confirm("정말로 삭제하시겠습니까?")) {
		alert(" 삭제가 완료되었습니다.");
		location.href = "<%=request.getContextPath()%>/staff/board/notice/remove?nno=${notice.nno}";
    } else {
        alert("글을 삭제하지 않습니다.");
    }
}

function back_list() {
	location.href="<%=request.getContextPath()%>/staff/board/notice";
}
</script>