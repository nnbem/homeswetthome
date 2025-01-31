<%@ page import="home.staff.dto.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/staff_member.css">
</head>

<div class="content-wrapper">
	<div class="content-title" >
		<h1>
			<b>정보공유</b>
		</h1>
		<div class="st-button-container">
			<button type="submit" class="button" onclick="modify('${sharing.sno}');">수정</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button type="submit" class="button" onclick="delete_go();">삭제</button>
		</div>
	</div>
	<div class="content-body" >
	<table class="detail-table">
			<thead>
				<tr>
					<th>
						<label for="title">${sharing.title }</label>
					</th>
				</tr>
			</thead>
			<tbody>
				<fmt:formatDate var="created" value="${sharing.created}" pattern="yyyy-MM-dd"/>
				<tr>
					<td>${sharing.mid}</td>
				</tr>
				<tr>
					<td>${created}</td>
				</tr>
				<tr>
					<td style="padding: 10%; font-size: 20px;">
						${sharing.content }
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

<script>

function modify(sno) {
	location.href="modify?sno=" + sno;
}

function delete_go() {
	location.href="remove?sno=${sharing.sno}";
}

function delete_go() {
	if (confirm("정말로 삭제하시겠습니까?")) {
		alert(" 삭제가 완료되었습니다.");
        location.href = "<%=request.getContextPath()%>/member/board/sharing/remove?sno=${sharing.sno}";
    } else {
        alert("글을 삭제하지 않습니다.");
    }
}

function back_list() {
	location.href="<%=request.getContextPath()%>/member/board/sharing";
}
</script>