<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/regist_style.css">
</head>


<!-- Main Content -->
<div class="ineerWrapper">
	<div class="content">
		<div class="main-container">
			<div class="st-list-button-container">
				<button type="submit" class="button" onclick="back_page();">목록</button>
			</div>
			
				<div class="inner_container">
					<h2>인계동물 정보</h2>
					<div class="table card-body table-responsive p-0">
						<table class="table" id="basic">
							<tr>
								<td class="center_cell">인계번호</td>
								<td class="left_cell" >
									<input class="input_form" type="text" name="name" placeholder="2200001001" style="border: none;">
								</td>
								<td class="center_cell">발견장소</td>
								<td class="left_cell">
									<input class="input_form" type="text" name="name" placeholder="대전 동구" style="border: none;">
								</td>
							</tr>
							<tr>
								<td class="center_cell">인계 센터 이름</td>
								<td class="left_cell">
									<input class="input_form" type="text" name="name" placeholder="대전유기견보호소" style="border: none;">
								</td>
								<td class="center_cell">발견날짜</td>
								<td class="left_cell">
									<input class="input_form" type="text" name="name" placeholder="2024년 12월 30일" style="border: none;">
								</td>
							</tr>
							<tr>
								<td class="center_cell">품종</td>
								<td class="left_cell">
									<input class="input_form" type="text" name="name" placeholder="진돗개" style="border: none;">
								</td>
								<td class="center_cell">성별</td>
								<td class="left_cell">
									<input class="input_form" type="text" name="name" placeholder="암컷/수컷" style="border: none;">
								</td>
							</tr>
							<tr>
								<td class="center_cell">계과목</td>
								<td colspan="3" class="left_cell">
									<input class="input_form" type="text" name="name" placeholder="강아지과" style="border: none;">
								</td>
							</tr>
							<tr>
								<td class="center_cell">보호동물관리번호</td>
								<td colspan="3" class="left_cell">
									<input class="input_form" type="text" name="name" placeholder="410060426700001" style="border: none;">
								</td>
							</tr>
							<tr>
								<td class="center_cell">발견사진</td>
								<td colspan="3"><input type="file" name="file"></td>
							</tr>
						</table>
						
					</div> <!-- table card-body table-responsive p-0 -->
				</div> <!-- inner_container -->
			
		</div> <!-- main-container" -->
	</div> <!-- content -->
</div> <!-- ineerWrapper -->

<script>
function back_page() {
    // 이동할 페이지 URL 설정
    window.location.href = "/staff/receive";
}
</script>

