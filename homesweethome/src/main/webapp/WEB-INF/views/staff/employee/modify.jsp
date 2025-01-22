<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/regist_style.css">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style2.css">
</head>

<form name="modifyForm" method="post" id="modifyForm" action="/staff/employee/modify/post">
    <div class="ineerWrapper">
        <div class="content">
            <div class="main-container">
                <div class="st-list-button-container">
                    <button type="button" class="button" onclick="back_page();">목록</button>
                    <button type="button" class="regi_button" onclick="modify_submit();">수정하기</button>
                </div>
                <div class="inner_container">
                    <h2>사원 정보 수정</h2>
                    <div class="row" style="height: 200px;">
							<div class="mailbox-attachments clearfix col-md-12"
								style="text-align: center;">
								<div id="pictureView"
									style="border: 1px solid green; height: 260px; width: 200px; margin: 0 auto;"></div>
							</div>
						</div>
						<br/>
						<br/>
                    <div class="table card-body table-responsive p-0">
                        <table class="table" id="basic">
                            <tr>
                                <td class="center_cell">이름</td>
                                <td class="left_cell">
                                	<input type="text" name="name" value="${employee.name }" readonly style="border: none; outline: none;">
                                </td>
                                <td class="center_cell">부서</td>
								<td class="left_cell">
									<input class="input_form_notnull" type="text" name="position" value="${employee.position }" >
								</td>
                                
                            </tr>
                            <tr>
								<td class="center_cell">사원번호(아이디)</td>
                                <td class="left_cell">
                                    <input class="input_form_notNull" type="text" name="eid" value="${employee.eid }" readonly style="border: none; outline: none;">
                                </td>
                                <td class="center_cell">비밀번호</td>
                                <td class="left_cell">
                                    <input class="input_form_notNull" type="text" name="pwd" value="${employee.pwd }" style="border: none; outline: none;">
                                </td>
							</tr>
							<tr>
								<td class="center_cell">생년월일</td>
								<td class="left_cell">
									<input class="input_form_notnull" type="text" name="birth" value="${employee.birth }" readonly>
								</td>
								<td class="center_cell">입사일</td>
								<td class="left_cell">
									<input class="input_form_notnull" type="date" name="joid_date" value="${employee.joid_date }" readonly>
								</td>
							</tr>
							<tr>
								<td class="center_cell">이메일</td>
								<td class="left_cell">
									<input class="input_form_notnull" type="text" name="birth" value="${employee.email }">
								</td>
								<td class="center_cell">전화번호</td>
								<td class="left_cell">
									<input class="input_form_notnull" type="text" name="phone"  value="${employee.phone }">
								</td>
							</tr>
                            <tr>
                            	<td class="center_cell">주소</td>
                            	<td colspan="3" class="left_cell">
									<input class="input_form_notnull" type="text" name="department" value="${employee.department }">
								</td>
                            </tr>
                        </table>
                    </div> <!-- table card-body table-responsive p-0 -->
                </div> <!-- inner_container -->
            </div> <!-- main-container -->
        </div> <!-- content -->
    </div> <!-- ineerWrapper -->
</form>

<script>
function back_page() {
	// 이동할 페이지 URL 설정
    window.location.href = "/staff/employee/employee";
}

function modify_submit() {
    // 폼 객체 가져오기
    const form = document.forms["modifyForm"]; // 폼 이름을 정확히 입력
    // 또는 const form = document.getElementById("modifyForm");

    // 필수 입력 필드 선택
    const requiredInputs = form.querySelectorAll(".input_form_notnull");

    for (const input of requiredInputs) {
        // 값이 비어 있는지 확인
        if (!input.value.trim()) {
            alert(input.title + "은(는) 필수입니다."); // 필드 제목 또는 타이틀 표시
            input.focus(); // 해당 입력 필드로 포커스 이동
            return; // 폼 제출 중단
        }
    }

    // 모든 필수 입력 필드가 입력된 경우 폼 제출
    form.submit();
}
</script>
