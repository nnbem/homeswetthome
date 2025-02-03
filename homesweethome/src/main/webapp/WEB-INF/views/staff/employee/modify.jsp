<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/regist_style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style2.css">
<script src="<%=request.getContextPath()%>/resources/js/regist.js"></script>
<style>
div#pictureView {
	background-image:
		url('<%=request.getContextPath()%>/staff/getPicture?eid=${employee.eid}');
	background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<div class="ineerWrapper">
	<fmt:formatDate value="${employee.birth}" pattern="yyyy-MM-dd"
		var="birthFormatted" />
	<fmt:formatDate value="${employee.joid_date}" pattern="yyyy-MM-dd"
		var="joidDateFormatted" />

	<form name="modifyForm" method="post" id="modifyForm" action="/staff/employee/modify/post" enctype="multipart/form-data">
		<div class="content">
			<div class="main-container">
				<div class="st-list-button-container">
					<button type="button" class="button" onclick="back_page();">목록</button>
					<button type="button" class="regi_button"
						onclick="modify_submit();">수정하기</button>
				</div>
				<div class="inner_container">
					<h2>사원 정보 수정</h2>
					<div class="picture" id="pictureView"
						style="border: 1px solid green; height: 260px; width: 200px; margin: 0 auto;">
					</div>
					<div class="picture_file" style="width: 100%;">
						<div class="file_container">
							<br /> <label for="inputFile" class="label_file">파일선택</label>
							<input id="inputFileName" class="form-control" type="text" name="pictureName" value="${employee.picture}" disabled />
							<input type="file" id="inputFile" name="picture" style="display: none;" onchange="picture_go();" />
						</div>
						<br />
						<br />
						<div class="table card-body table-responsive p-0">
							<table class="table" id="basic">
								<tr>
									<td class="center_cell">이름</td>
									<td class="left_cell"><input type="text" name="name" value="${employee.name }" readonly
										style="border: none; outline: none;"></td>
									<td class="center_cell">부서</td>
									<td class="left_cell">
										<select name="position" class="input_form_notnull">
												<option value="${employee.position}" selected>${employee.position}</option>
												<option value="일반행정">일반행정</option>
												<option value="동물보호과">동물보호과</option>
												<option value="동물입양과">동물입양과</option>
												<option value="수의사">수의사</option>
										</select>
									</td>
								</tr>
								<tr>
									<td class="center_cell">사원번호(아이디)</td>
									<td class="left_cell">
										<input class="input_form_notNull" type="text" name="eid" value="${employee.eid }" readonly
										style="border: none; outline: none;">
									</td>
									<td class="center_cell">비밀번호</td>
									<td class="left_cell">
										<input class="input_form_notNull" type="text" name="pwd" value="${employee.pwd }"
										style="border: none; outline: none;">
									</td>
								</tr>
								<tr>
									<td class="center_cell">생년월일</td>
									<td class="left_cell">
										<input class="input_form_notnull" type="text" name="birth" value="${birthFormatted}" readonly>
									</td>
									<td class="center_cell">입사일</td>
									<td class="left_cell">
										<input class="input_form_notnull" type="text" name="joid_date" value="${joidDateFormatted}" readonly>
									</td>
								</tr>
								<tr>
									<td class="center_cell">이메일</td>
									<td class="left_cell">
										<input class="input_form_notnull" type="text" name="email" value="${employee.email }">
									</td>
									<td class="center_cell">전화번호</td>
									<td class="left_cell">
										<input class="input_form_notnull" type="text" name="phone" value="${employee.phone }">
									</td>
								</tr>
								<tr>
									<td class="center_cell">주소</td>
									<td colspan="3" class="left_cell">
										<input class="input_form_notnull" type="text" name="department" value="${employee.department }">
									</td>
								</tr>
							</table>
						</div> <!-- table card-body table-responsive p-0" -->
					</div> <!-- picture_file -->
					<!-- picture_file -->
				</div> <!-- inner_container -->
			</div> <!-- main-container -->
		</div> <!-- content -->
	</form>
</div> <!-- ineerWrapper -->

<script>
    function back_page() {
        // 이동할 페이지 URL 설정
        window.location.href = "/staff/employee";
    }

    function modify_submit() {
        // 폼 객체 가져오기
        const form = document.forms["modifyForm"];
        // 필수 입력 필드 선택
        const requiredInputs = form.querySelectorAll(".input_form_notnull");

        for (const input of requiredInputs) {
            // 값이 비어 있는지 확인
            if (!input.value.trim()) {
                alert(input.title + "은(는) 필수입니다.");
                input.focus();
                return;
            }
        }
        form.submit();
    }
</script>
