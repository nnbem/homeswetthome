<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="home.member.dto.MemberVO" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/body.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/common.css">

<style>

input.form-control {
	padding-left: 10px;
	margin-left: 10px;
	font-family: NanumSquare_ac;
}

</style>

</head>

<!-- 본문 -->
 <section>

	<div class="content-title">
		<h1>
			<b>회원정보</b>
		</h1>
	</div>
	<div class="content-body">
		<div class="verification-box" style="border: none; font-size: 0px;">
			
			<br/>
			<form id="detail-form" method="post" action="<%=request.getContextPath()%>/member/mypage/deactivation/modify"
				enctype="multipart/form-data">
				<input type="hidden" name="mid" value="${member.mid}">
			<div class="image-preview">
				<div class="image-img" style="display: flex; justify-content: center; align-items: center; padding: 2%;">
					<c:if test="${not empty member.picture}">
						<img src="${pageContext.request.contextPath}/resources/image/member/${member.mid}.jpg" alt="회원 사진"
							 style="width:27%; height:27%; object-fit: cover; padding:2%;">
					</c:if>
					<c:if test="${empty member.picture}">
						<span>이미지 없음</span>
					</c:if>
				</div>
			</div>
			<br/>
			<div class="memberInfo" style="text-align:center; padding-left:25%;">
				<div class="form-group">
					<label>&nbsp;&nbsp;아　　이　　디</label>&nbsp;
					<input type="text" id="mid" name="mid" class="form-control" value="${member.mid }" readonly>
				</div>
				<div class="form-group">
					<label>&nbsp;&nbsp;이　　　　　름</label>&nbsp;
					<input type="text" id="name" name="name" class="form-control" value="${member.name }" readonly>
				</div>
				<div class="form-group">
					<label>&nbsp;&nbsp;전　화　번　호</label>&nbsp;
					<input type="text" id="phone" name="phone" class="form-control" value="${member.phone }" readonly>
				</div>
				<div class="form-group">
					<label>&nbsp;&nbsp;생　년　월　일</label>&nbsp;
					<input type="text" id="birth" name="birth" class="form-control" value="${member.formatBirth }" readonly>
				</div>
				<div class="form-group">
					<label>&nbsp;&nbsp;성　　　　　별</label>&nbsp;
					<input type="text" id="sex" name="sex" class="form-control" value="${member.formatSex }" readonly>
				</div>
				<div class="form-group">
					<label>&nbsp;&nbsp;주　　　　　소</label>&nbsp;
					<input type="text" id="address" name="address" class="form-control" value="${member.address }" readonly>
				</div>
				<div class="form-group">
					<label>&nbsp;&nbsp;이　　메　　일</label>&nbsp;
					<input type="email" id="email" name="email" class="form-control" value="${member.email }" readonly>
				</div>
				<br />
				<div class="button-container" style="display: flex; justify-content: left;">
					<div><button type="button" onclick="location.href='modify?mid=${member.mid}';" id="modifyBtn" class="button" style="width:25.2em;">수정</button></div>			
				</div>
			</div>
			</form>
		</div>
	</div>

</section>
