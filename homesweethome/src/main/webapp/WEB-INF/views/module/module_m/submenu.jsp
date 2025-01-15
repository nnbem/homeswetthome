<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String path = request.getRequestURI(); %>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/submenu.css">
<div class="submenu-container">
    <h3>마이페이지</h3>
    <ul>
        <c:choose>
            <c:when test="${path eq '/mypage'}">
                <li><a href="/mypage_modify">회원정보 수정</a></li>
                <li><a href="/mypage_adop">입양동물 정보</a></li>
                <li><a href="/mypage_list">찜 목록</a></li>
                <li><a href="/mypage_posts">작성글 조회</a></li>
                <li><a href="/mypage_reservations">예약/신청 확인</a></li>
                <li><a href="/mypage_questions">1:1 문의</a></li>
            </c:when>
            <c:otherwise>
                <li><a href="/intro">센터 소개</a></li>
                <li><a href="/adoption">입양 절차</a></li>
            </c:otherwise>
        </c:choose>
    </ul>
</div>