<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/regist_style.css">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style2.css">
</head>

<form name="modifyForm" method="post" id="modifyForm" action="/staff/receive/modify/post" enctype="post">
    <div class="ineerWrapper">
        <div class="content">
            <div class="main-container">
                <div class="st-list-button-container">
                    <button type="button" class="button" onclick="back_page();">목록</button>
                    <button type="button" class="regi_button" onclick="modify_submit();">수정하기</button>
                </div>
                <div class="inner_container">
                    <h2>인계동물 정보</h2>
                    <div class="table card-body table-responsive p-0">
                        <table class="table" id="basic">
                            <tr>
                                <td class="center_cell">인계번호</td>
                                <td class="left_cell">
                                	<input type="text" name="rcno" value="${receive.rcno}" readonly>
                                </td>
                                <td class="center_cell">발견장소</td>
                                <td class="left_cell">
                                    <input class="input_form_notNull" type="text" name="spot" placeholder="" title="발견장소" style="border: none;">
                                </td>
                            </tr>
                            <tr>
								<td class="center_cell">인계 센터 이름</td>
								<td class="left_cell">
									<input class="input_form_notnull" type="text" name="cantername" placeholder="" style="border: none;">
								</td>
								<td class="center_cell">발견날짜</td>
								<td class="left_cell">
									<input class="input_form_notnull" type="date" name="regdate" title="발견날짜" style="border: none;">
								</td>
							</tr>
							<tr>
								<td class="center_cell">품종</td>
								<td class="left_cell">
									<input class="input_form_notnull" type="text" name="breed" placeholder="" style="border: none;">
								</td>
								<td class="center_cell">성별</td>
								<td class="left_cell">
									<input class="input_form_notnull" type="text" name="gender" placeholder="" style="border: none;">
								</td>
							</tr>
							<tr>
								<td class="center_cell">종류</td>
								<td class="left_cell">
									<input class="input_form_notnull" type="text" name="kind" placeholder="" style="border: none;">
								</td>
								<td class="center_cell">동물칩번호</td>
								<td class="left_cell">
									<input class="input_form_notnull" type="text" name="aid" placeholder="" style="border: none;" readonly>
								</td>
							</tr>
                            <tr>
                                <td class="center_cell">발견사진</td>
                                <td colspan="3"><input type="file" name="picture"></td>
                            </tr>
							
							                            
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

<script>
function back_page() {
	// 이동할 페이지 URL 설정
    window.location.href = "/staff/receive/receive";
}

function modify_submit() {
    // 폼 객체 가져오기
    const form = document.forms["registForm"];

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
