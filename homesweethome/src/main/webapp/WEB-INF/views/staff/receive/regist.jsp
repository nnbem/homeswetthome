<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/regist_style.css">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style2.css">
</head>

<form name="registForm" method="post" id="registForm" action="/staff/receive/regist" enctype="multipart/form-data">
    <div class="ineerWrapper">
        <div class="content">
            <div class="main-container">
                <div class="st-list-button-container">
                    <button type="button" class="button" onclick="back_page();">목록</button>
                    <button type="button" class="regi_button" onclick="reg_complet();">등록하기</button>
                </div>
                <div class="inner_container">
                    <h2>인계동물 정보</h2>
                    <div class="table card-body table-responsive p-0">
                        <table class="table" id="basic">
                            <tr>
                               <td class="center_cell">인계 센터 이름</td>
								<td class="left_cell">
									<input class="input_form_notnull" type="text" name="cantername" placeholder="" >
								</td>
                                <td class="center_cell">발견장소</td>
                                <td class="left_cell">
                                    <input class="input_form_notnull" type="text" name="spot" placeholder="" >
                                </td>
                            </tr>
                            <tr>
								<td class="center_cell">종류</td>
								<td class="left_cell">
									<input class="input_form_notnull" type="text" name="kind" placeholder="">
								</td>
								<td class="center_cell">발견날짜</td>
								<td class="left_cell">
									<input class="input_form_notnull" type="date" name="regdate" title="발견날짜">
								</td>
							</tr>
							<tr>
								<td class="center_cell">품종</td>
								<td class="left_cell">
									<input class="input_form_notnull" type="text" name="breed" placeholder="">
								</td>
								<td class="center_cell">성별</td>
								<td class="left_cell">
									<input class="input_form_notnull" type="text" name="gender" placeholder="">
								</td>
							</tr>
                            <tr>
                                <td class="center_cell">발견사진</td>
                                <td colspan="3">
                                	<input type="file" name="picture"></td>
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

function reg_complet() {
    var form = document.forms.registForm;
    var inputs = document.querySelectorAll(".input_form_notnull");

    for (var input of inputs) {
        if (!input.value) {
            alert(input.placeholder + "은(는) 필수입니다."); // 필드 이름 표시
            input.focus();
            return;
        }
    }

    form.submit(); // 폼 제출
}

</script>
