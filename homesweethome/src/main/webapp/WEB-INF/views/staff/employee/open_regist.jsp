<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HomeSweetHome</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/open_regist_style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/regist_style.css">
<script src="<%=request.getContextPath()%>/resources/js/regist.js"></script>
<!-- jQuery 추가 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

<form name="registForm"  method="post" id="registForm" action="/staff/employee/regist/post" enctype="multipart/form-data">
	<div class="ineerWrapper">
		<div class="content">
			<div class="main_container">
				<div class="button_container">
					<button type="button" class="back_button" onclick="back_page();">목록</button>
					<button type="button" class="regist_button" onclick="regist_submit(event);">등록하기</button>
					
				</div>
				<div class="inner_container">
					<h2 style="font-size: 30px;">사원 등록</h2>
					<div class="container_group">
						<div class="picture" id="pictureView"
							style="border: 1px solid green; height: 260px; width: 200px; margin: 0 auto;">
						</div>
						<div class="picture_file" style="width: 100%;">
							<div class="file_container">
								<br />
								<label for="inputFile" class=" label_file">파일선택</label>
								<input id="inputFileName" class="form-control" type="text" name="tempPicture" disabled />
									<input type="file" id="inputFile" name="picture" style="display: none;" onchange="picture_go();" />
							</div>
							<!-- file_container -->
						</div>
						<!-- picture_file -->
					</div>
					<!-- container_group -->

					<div class="table card-body table-responsive p-0">
						<table class="rego_table" id="basic">
							<tr>
								<td class="center_cell">이름</td>
								<td class="left">
									<input type="text" name="name" style="border: none; outline: none;"></td>
								    <td class="center_cell">부서</td>
								    <td class="left">
								        <select name="position" class="input_form_notnull">
								            <option value="">부서를 선택하세요</option>
								            <option value="일반행정">일반행정</option>
								            <option value="동물보호과">동물보호과</option>
								            <option value="동물입양과">동물입양과</option>
								            <option value="수의사">수의사</option>
								        </select>
								    </td>
							<tr>
								<td class="center_cell">사원번호(아이디)</td>
								<td class="left_eid">
									<input type="text" name="eid" class="input_form_notnull">
                                   	<button type="button" class="check_button" onclick="idCheck_go();">중복확인</button>
								
								</td>
								<td class="center_cell">비밀번호</td>
								<td class="left">
									<input class="input_form_notNull" type="text" name="pwd" style="border: none; outline: none;">
								</td>
							</tr>
							<tr>
								<td class="center_cell">생년월일</td>
								<td class="left">
									<input class="input_form_notnull" type="date" name="birth">
								</td>
								<td class="center_cell">입사일</td>
								<td class="left">
									<input style="font-size: 18px;" class="input_form_notnull" type="date" name="joid_date">
								</td>
							</tr>
							<tr>
								<td class="center_cell">이메일</td>
								<td class="left">
									<input class="input_form_notnull" type="text" name="email"></td>
								<td class="center_cell">전화번호</td>
								<td class="left">
									<input class="input_form_notnull" type="text" name="phone" placeholder="010-1234-1234" 
                              			   maxlength="13" >
							</tr>
							<tr>
								<td class="center_cell">주소</td>
								<td colspan="3" class="left">
									<input class="input_form_notnull" type="text" name="department">
								</td>
							</tr>
						</table>
					</div>
					<!-- table card-body table-responsive p-0 -->
				</div>
				<!-- inner_container -->
			</div>
			<!-- main-container -->
		</div>
		<!-- content -->
	</div>
	<!-- ineerWrapper -->
</form>

<script>
//전화번호 유효성 검사 함수
function validatePhone(phone) {
    const phonePattern = /^010-\d{4}-\d{4}$/; // 010-XXXX-XXXX 형식
    return phonePattern.test(phone);
}

function regist_submit(event) {
    if (!event) event = window.event; // 이벤트 객체 없을 때 대비
    if (event) event.preventDefault(); // 기본 제출 방지

    // 폼 요소 가져오기
    const form = document.getElementById('registForm');
    const nameInput = form.querySelector('input[name="name"]');
    const positionInput = form.querySelector('select[name="position"]');
    const eidInput = form.querySelector('input[name="eid"]');
    const pwdInput = form.querySelector('input[name="pwd"]');
    const phoneInput = form.querySelector('input[name="phone"]');
    const birthInput = form.querySelector('input[name="birth"]');
    const joidDateInput = form.querySelector('input[name="joid_date"]');
    const emailInput = form.querySelector('input[name="email"]');
    const departmentInput = form.querySelector('input[name="department"]');
    const pictureInput = form.querySelector('input[name="picture"]');

    // 필수 입력값 검사
    if (!nameInput.value.trim()) {
        alert('이름을 입력해주세요.');
        nameInput.focus();
        return false;
    }
    if (!positionInput.value) {
        alert('부서를 선택해주세요.');
        positionInput.focus();
        return false;
    }
    if (!eidInput.value.trim()) {
        alert('사원번호를 입력해주세요.');
        eidInput.focus();
        return false;
    }
    if (!pwdInput.value.trim()) {
        alert('비밀번호를 입력해주세요.');
        pwdInput.focus();
        return false;
    }
    if (!birthInput.value) {
        alert('생년월일을 선택해주세요.');
        birthInput.focus();
        return false;
    }
    if (!joidDateInput.value) {
        alert('입사일을 선택해주세요.');
        joidDateInput.focus();
        return false;
    }
    if (!emailInput.value.trim()) {
        alert('이메일을 입력해주세요.');
        emailInput.focus();
        return false;
    }
    if (!validatePhone(phoneInput.value)) {
        alert('전화번호를 입력해주세요.');
        phoneInput.focus();
        return false;
    }
    if (!departmentInput.value.trim()) {
        alert('주소를 입력해주세요.');
        departmentInput.focus();
        return false;
    }
    if (!pictureInput.files.length) { // 사진 등록 여부 확인
        alert('사진을 등록해주세요.');
        return false;
    }

 // 모든 검사 통과 시 폼 제출 (POST 요청)
    form.method = "POST"; // 명시적으로 POST 설정
    form.action = "/staff/employee/regist/post"; // 액션 URL 설정
    form.enctype = "multipart/form-data"; // 파일 업로드를 위한 인코딩 설정
    form.submit();
}
</script>

<script>
function back_page() {
	// 이동할 페이지 URL 설정
    window.location.href = "/staff/employee";
}
</script>


</body>
</html>
