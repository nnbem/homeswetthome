<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="home.adoption.dto.AdoptionInfoVO" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/table.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/slidebar.css">
<style>
img.detail_image {
	width: 50%;
	object-fit: cover;
	cursor: pointer;
}
</style>
</head>

<!-- 본문 -->
<section>
	<div class="inner_cent">
		<!-- Sidebar -->
		<div class="sidebar">
			<h1>
				<b>마이페이지</b>
			</h1>
			<div class="sideMenu">
				<ul class="sideMenu lists">
					<li class="sideMenu">
						<ul class="sideMenu list">
							<li class="list">
								<a href="/member/mypage/deactivation/modify">회원정보수정</a>
							</li>
							<li class="list">
								<a href="/member/mypage/adopt">입양동물정보</a>
							</li>
							<li class="list">
								<a href="/member/mypage/mark/list">찜목록</a>
							</li>
							<li class="list">
								<a href="/member/mypage/worte">작성글 조회</a>
							</li>
							<li class="list">
								<a href="member/mypage/reservation">예약/신청확인</a>
							</li>
							<li class="list">
								<a href="/member/mypage/">유예신청</a>
							</li>
							<li class="list">
								<a href="/member/mypage/inquiry">1:1 문의</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>

		<div class="content-wrapper">
			<div class="content-title">
				<h1>
					<b>입양동물정보</b>
				</h1>
			</div>
			<div class="content-body">
				<c:if test="${empty adoptionInfoList}">
				    <div class="no-data">
				        <p class="text-content">해당 내용이 없습니다.</p>
				    </div>
				</c:if>
				
				<c:if test="${not empty adoptionInfoList}">
				    <div class="table card-body table-responsive p-0">
				        <table class="table" id="basic">
				            <c:forEach var="animalInfo" items="${adoptionInfoList}">
				                <tr>
				                    <td class="image-cell" rowspan="5">
				                        <img src="${animalInfo.picture}" alt="동물 이미지" class="detail_image"
				                             onclick="openAnimal();">
				                    </td>
				                    <th>동물칩번호</th>
				                    <td>${animalInfo.aid}</td>
				                    <th>이름</th>
				                    <td>${animalInfo.name}</td>
				                </tr>
				                <tr>
				                    <th>품종</th>
				                    <td>${animalInfo.breed}</td>
				                    <th>종류</th>
				                    <td>${animalInfo.kind}</td>
				                </tr>
				                <tr>
				                    <th>나이</th>
				                    <td>${animalInfo.age}</td>
				                    <th>모색</th>
				                    <td>${animalInfo.color}</td>
				                </tr>
				                <tr>
				                    <th>성별</th>
				                    <td>${animalInfo.gender}</td>
				                    <th>중성화 여부</th>
				                    <td>${animalInfo.neutralization}</td>
				                </tr>
				                <tr>
				                    <th>예방접종</th>
				                    <td>DB</td>
				                    <th>입양 날짜</th>
				                    <td>${animalInfo.complete_Date}</td>
				                </tr>
				            </c:forEach>
				        </table>
				    </div>
				</c:if>

			</div>
		</div>
	</div>
</section>

<script>
	function openAnimal() {
		window.open('/member/mypage/adopt/open_animal', '동물상세정보',
				'width=800, height=500, resizable=yes, scrollbars=yes');
	}
</script>