<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/regist_2.css">
</head>

<div class="form-container">
	<form>
		<div class="form_inner">
			<label>이름</label> <input type="text" placeholder="김이박">
			<label>입사일</label> <input type="date" value="st250110">
			<label>아이디</label> <input type="text" value="2024-10-12" readonly>
			<label>비밀번호</label> <input type="password">
			<label>주소</label>
			 <label>상세주소</label> <input type="text">
			<label>이메일</label>
			<input type="email">

			<label>부서asdf</label>
			<input type="text">
		</div>
		<div class="form-buttons">
			<button type="submit">등록</button>
			<button type="button">취소</button>
		</div>
	</form>
</div>

