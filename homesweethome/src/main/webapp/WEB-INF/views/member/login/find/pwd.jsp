<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>homesweethome-비밀번호 찾기</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
<!-- icheck bootstrap -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">

<!-- jQuery -->
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>

<style>
body {
	font-family: NanumSquare_ac;
	background-color: #FFFFFF;
	color: #333;
}

div.wraper {
	width: 600px;
	height: 600px;
	margin: 0 auto;
	margin-top: 50px;
	margin-bottom: 50px;
}

div.container {
	width: 600px;
	pading: 50px;
	border: 1px solid #ddd;
	border-radius: 10px;
}

div.login-logo {
	padding-top: 50px;
}

form.login-form {
	width: 500px;
	margin: 0 auto;
}

div.input-group {
	padding-top: 10px;
}

div.input-group label {
	padding: 8px;
	font-size: 15px;
	float: left;
}

input.form-control {
	width: 100%;
	padding-left: 10px;
	margin-left: 10px;
	background-color: #E6E6E6;
}

.input-group>.custom-select:not(:first-child), .input-group>.form-control:not(:first-child)
	{
	border-radius: 5px;
}

div img.logoImg {
	width: 50px;
	height: 40px;
}

div.submit {
	padding: 10px;
	height: 60px;
	background-color: #7C7C7C;
	border-radius: 5px;
}

div.submit button {
	color: white;
	font-size: 20px;
	letter-spacing: 8px;
}

.find a {
	text-decoration: none;
	color: inherit;
}
</style>
</head>
<body>
	<div class="wraper">
		<div class="container">
			<!-- /.login-logo -->
			<div class="login-logo">
				<img src="<%=request.getContextPath()%>/resources/image/logo.png"
					alt="logoimg" class="logoImg"> <a><b>HomeSweetHome</b></a>
			</div>

			<h5 class="login-box-msg">비밀번호 찾기</h5>

			<form method="post" class="login-form">
				<div class="input-group mb-3">
					<label>아 이 디</label>&nbsp;
					<input type="text" class="form-control radius" placeholder="아이디를 입력하세요">
				</div>
				<div class="input-group mb-3">
					<label>전화번호</label>
					<input type="text" class="form-control radius" placeholder="전화번호를 입력하세요">
				</div>
				<p style="text-align: center;">────────────── 또는 ─────────────</p>
				<div class="input-group mb-3">
					<label>이　　름</label>
					<input type="text" class="form-control radius" placeholder="이름을 입력하세요">
				</div>
				<div class="input-group mb-3">
					<label>이 메 일</label>&nbsp;
					<input type="email" class="form-control radius" placeholder="이메일을 입력하세요">
				</div>
				<div class="row">
					<div class="col-12 submit" style="margin-bottom: 30px;">
						<button type="submit" class="btn btn-block">인증하기</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>

