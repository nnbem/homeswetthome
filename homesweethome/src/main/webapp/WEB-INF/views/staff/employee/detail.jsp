<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/detail_style.css">
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style2.css">
</head>


<!-- Main Content -->
<div class="ineerWrapper">
	<div class="content">
		<div class="main-container">
			<div class="st-list-button-container">
				<button type="submit" class="button" onclick="back_page();">목록</button>
				<button type="submit" class="regi_button" onclick="open_modify();">수정하기</button>
			</div>

			<div class="inner_container">
				<h3>사원정보</h3>
			<table class="info-table">
				<tr>
					<th><span class="required">*</span>이름</th>
					<td>최하나</td>
					<th><span class="required">*</span>입사일</th>
					<td>2024년 12월 30일</td>
				</tr>
				<tr>
					<th><span class="required">*</span>아이디</th>
					<td>hana</td>
					<th><span class="required">*</span>성별</th>
					<td>여자</td>
				</tr>
				<tr>
					<th><span class="required">*</span>전화번호</th>
					<td colspan="3">010 - 1112 - 2323</td>
				</tr>
				<tr>
					<th><span class="required">*</span>주소</th>
					<td colspan="3">대전광역시 대덕구 중앙로 12</td>
				</tr>
				<tr>
					<th><span class="required">*</span>이메일</th>
					<td colspan="3">hana1234@naver.com</td>
				</tr>
				<tr>
					<th><span class="required">*</span> 부서</th>
					<td colspan="3">동물보호과</td>
				</tr>
			</table>

				
			</div>
			<!-- inner_container -->

		</div>
		<!-- main-container" -->
	</div>
	<!-- content -->
</div>
<!-- ineerWrapper -->

<script>
	function back_page() {
		// 이동할 페이지 URL 설정
		window.location.href = "/staff/employee";
	}
	function open_modify() {
		window.open('/staff/employee/open_modify', '사원수정', 700, 300);
	}
</script>

