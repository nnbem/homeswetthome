<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/regist_style.css">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style2.css">
</head>


<!-- Main Content -->
<div class="ineerWrapper">
	<div class="content">
		<div class="main-container">
			<div class="back_group">
			<img src="<%=request.getContextPath()%>/resources/image/arrow_2.png" alt="arrow">
			<h1 style="font-size: 20px;">뒤로가기</h1>
			</div>
			<div class="middle">
				<div class="inner_container">
					<h2>인계동물 정보</h2>
					<div class="table card-body table-responsive p-0">
						<table class="table" id="basic">
							<tr>
								<td class="center_cell">이름</td>
								<td class="left_cell" >
									<input class="input_form" type="text" name="name" placeholder="" style="border: none;">
								</td>
								<td class="center_cell">입사일</td>
								<td class="left_cell">
									<input class="input_form" type="text" name="name" placeholder="" style="border: none;">
								</td>
							</tr>
							<tr>
								<td class="center_cell">부서</td>
								<td class="left_cell" colspan="4">
									<input class="input_form" type="text" name="name" placeholder="" style="border: none;">
								</td>
							</tr>
							<tr>
								<td class="center_cell">아이디</td>
								<td class="left_cell" colspan="4">
									<input class="input_form" type="text" name="name" placeholder="st240101" style="border: none;">
								</td>
							</tr>
							<tr>
								<td class="center_cell">비밀번호</td>
								<td class="left_cell" colspan="4">
									<input class="input_form" type="text" name="name" placeholder="" style="border: none;">
								</td>
							</tr>
							<tr>
								<td class="center_cell">주소</td>
								<td class="left_cell" colspan="4">
									<input class="input_form" type="text" name="name" placeholder="" style="border: none;">
								</td>
							</tr>
							<tr>
								<td class="center_cell">상세주소</td>
								<td class="left_cell" colspan="4">
									<input class="input_form" type="text" name="name" placeholder="" style="border: none;">
								</td>
							</tr>
							<tr>
								<td class="center_cell">이메일</td>
								<td class="left_cell" colspan="4">
									<input class="input_form" type="text" name="name" placeholder="" style="border: none;">
								</td>
							</tr>
							<tr>
								<td colspan="4" style="text-align: right;">파일첨부</td>
							</tr>
						
						</table>
						<input type="file" name="file">
					</div> <!-- table card-body table-responsive p-0 -->
				</div> <!-- inner_container -->
			<div class="st-list-button-container">
				<button type="submit" class="button">목록</button>
			</div>
			</div>
		</div> <!-- main-container" -->
	</div> <!-- content -->
</div> <!-- ineerWrapper -->


