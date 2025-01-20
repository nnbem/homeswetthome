<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/regist_style.css">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style2.css">
</head>

<form name="registForm" method="post" id="registForm" action="/staff/receive/regist/post" enctype="multipart/form-data">
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
                                <td class="center_cell">인계번호</td>
                                <td class="left_cell">
                                    <input class="input_form_notNull" type="text" name="rcno" placeholder="2200001001" title="인계번호" style="border: none;">
                                </td>
                                <td class="center_cell">발견장소</td>
                                <td class="left_cell">
                                    <input class="input_form_notNull" type="text" name="spot" placeholder="대전 동구" title="발견장소" style="border: none;">
                                </td>
                            </tr>
                            <tr>
								<td class="center_cell">인계 센터 이름</td>
								<td class="left_cell">
									<input class="input_form_notnull" type="text" name="cantername" placeholder="대전유기견보호소" style="border: none;">
								</td>
								<td class="center_cell">발견날짜</td>
								<td class="left_cell">
									<input class="input_form_notnull" type="date" name="regdate" title="발견날짜" style="border: none;">
								</td>
							</tr>
							<tr>
								<td class="center_cell">품종</td>
								<td class="left_cell">
									<input class="input_form_notnull" type="text" name="breed" placeholder="진돗개" style="border: none;">
								</td>
								<td class="center_cell">성별</td>
								<td class="left_cell">
									<input class="input_form_notnull" type="text" name="gender" placeholder="암컷/수컷" style="border: none;">
								</td>
							</tr>
							<tr>
								<td class="center_cell">종류</td>
								<td colspan="3" class="left_cell">
									<input class="input_form_notnull" type="text" name="kind" placeholder="강아지과" style="border: none;">
								</td>
							</tr>
							<tr>
								<td class="center_cell">보호동물관리번호</td>
								<td colspan="3" class="left_cell">
									<input class="input_form_notnull" type="text" name="aid" placeholder="410060426700001" style="border: none;">
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

function reg_complet() {
    var form = document.forms.registForm;
    var input_form = document.querySelectorAll(".notNull");
    for (var input of input_form) {
        if (!input.value) {
            alert(input.getAttribute("centername") + "은 필수입니다.");
            input.focus();
            return;
        }
    }
    form.action = "/staff/receive/regist/post";
    form.method = "post";
    form.submit();
}

</script>
