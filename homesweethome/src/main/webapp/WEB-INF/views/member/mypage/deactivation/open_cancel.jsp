<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HomeSweetHome</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/deactivate.css">
</head>
<body>
	<h1>
		<b>회원탈퇴</b>
	</h1>
	<hr />
	<section class="withdrawal-container">

		<p class="required-note">* 표시는 필수입력입니다.</p>

		<!-- 회원정보 -->
		<div class="member-info">
			<h3>회원정보</h3>
			<table class="info-table">
				<tr>
					<th>이름</th>
					<td>최하나</td>
					<th>생년월일</th>
					<td>1999년 02월 02일</td>
				</tr>
				<tr>
					<th>아이디</th>
					<td>hana</td>
					<th>성별</th>
					<td>여자</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td colspan="3">010 - 1112 - 2323</td>
				</tr>
				<tr>
					<th>주소</th>
					<td colspan="3">대전광역시 대덕구 중앙로 12</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td colspan="3">hana1234@naver.com</td>
				</tr>
				<tr>
					<th>가입일자</th>
					<td>2024년 12월 05일</td>
					<th>입양일자</th>
					<td>-</td>
				</tr>
				<tr>
					<th>관심있는 동물</th>
					<td colspan="3">강아지, 고양이</td>
				</tr>
			</table>
		</div>

		<!-- 탈퇴사유 -->
		<div class="withdrawal-reason">
			<h3>탈퇴사유</h3>
			<table class="reason-table">
				<tr>
					<th><span class="required">*</span> 탈퇴사유</th>
					<td><select>
							<option value="" disabled selected>선택</option>
							<option value="privacy">개인정보 문제</option>
							<option value="service">서비스 불만족</option>
							<option value="service">현재 이용 중인 서비스와 중복</option>
							<option value="others">기타</option>
					</select></td>
				</tr>
				<tr>
					<th><span class="required">*</span> 내용</th>
					<td><textarea placeholder="최대 1000자까지 입력 가능합니다."
							maxlength="1000"></textarea></td>
				</tr>
				<tr>
					<th><span class="required">*</span> 개인정보이용동의</th>
					<td><label> <input type="checkbox" required>
							개인정보 수집(성명, 전화번호) 및 이용에 동의합니다. <a href="#">개인정보처리방침 보기</a>
					</label></td>
				</tr>
			</table>
		</div>

		<!-- 탈퇴 버튼 -->
		<div class="withdrawal-submit">
			<button type="submit" onclick="cancel_go();">탈퇴하기 →</button>
		</div>
	</section>
	<script>
		function cancel_go() {
			alert("탈퇴가 완료되었습니다.");
			window.close();
		}
	</script>

</body>
</html>
