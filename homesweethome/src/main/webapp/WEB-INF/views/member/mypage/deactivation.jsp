<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/body.css">
	<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/common.css">
</head>

<!-- 본문 -->

	<div class="content-title">
		<h1>
			<b>마이페이지</b>
		</h1>
	</div>
	<div class="content-body" >
			<p style="text-align:center;">본인 확인을 위해 비밀번호를 입력해주세요. <br/>
			비밀번호는 타인에게 노출되지 않도록 주의해주세요.</p>


			<!-- 비밀번호 입력 폼 -->
			<div class="password-form">
				<form action="/member/mypage/deactivation/modify" method="post">
					<input type="password" name="password" placeholder="비밀번호를 입력해주세요."
						required />
					<button type="submit">확 인</button>
				</form>
			</div>
		</div>


<br />