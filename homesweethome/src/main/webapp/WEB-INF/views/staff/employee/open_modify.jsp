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
</head>
<body>
	<h1>
		<b>사원등록</b>
	</h1>
	<hr />
	<br />
	<section class="input_container">
		<div class="container_group">
			<div class="picture" id="pictureView"
				style="border: 1px solid green; height: 200px; width: 140px; margin: 0 auto;"></div>
			<div class="picture_file" style="width: 100%;">
				<div class="file_container">
					<label for="inputFile"
						class=" label_file">파일선택</label>
					<input id="inputFileName" class="form-control" type="text"
						name="tempPicture" disabled /> <input type="file" id="inputFile"
						name="picture" style="display: none;" onchange="picture_go();" />
				</div>
			</div>
			<br />
		</div>
		<p class="required-note">* 표시는 필수입력입니다.</p>
		<!-- 사원정보 -->
		<div class="member-info">
			<h3>사원정보</h3>
			<table class="info-table">
				<tr>
					<th><span class="required">*</span>이름</th>
					<td>
					<input class="input_form" type="text" name="name" placeholder="2200001001" style="border: none;">
					최하나</td>
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
					<td colspan="3"><select>
							<option value="" disabled selected>선택</option>
							<option value="privacy">일반행정</option>
							<option value="service">수의사</option>
							<option value="service">동물보호과</option>
							<option value="others">동물입양과</option>
					</select></td>
				</tr>
			</table>
		</div>

		<!-- 탈퇴 버튼 -->
		<div class="withdrawal-submit">
			<button type="submit" onclick="regist_go();">수정하기 →</button>
			<button type="submit" onclick="cancel_go();">취소하기 →</button>
		</div>
		
	</section>
	<script>
		function regist_go() {
			alert("사원정보가 수정되었습니다.");
		    window.close();
		    
		    if (window.opener) {
		        window.opener.location.href = "/staff/employee";
		    } else {
		        alert("시스템오류로 리스트 화면으로 이동할 수 없습니다.");
		    }
		}

		function cancel_go() {
			window.close();
		}
	</script>

</body>
</html>
