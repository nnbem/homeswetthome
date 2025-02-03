<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HomeSweetHome</title>
<link rel="stylesheet" 
    href="<%=request.getContextPath()%>/resources/css/member_style/m_main.css">
<link rel="stylesheet"
    href="<%=request.getContextPath()%>/resources/css/member_style/body.css">
<link rel="stylesheet"
    href="<%=request.getContextPath()%>/resources/css/common.css">
</head>

<body>
<header>
 
</header>

<!-- 본문 -->
<section>

    <div class="content-title">
       <h1>
          <b style="font-size: 32px;">회원정보</b>
       </h1>
    </div>
    <div class="content-body">
    <p style="text-align:center;">본인 확인을 위해 비밀번호를 입력해주세요. <br/>
    비밀번호는 타인에게 노출되지 않도록 주의해주세요.</p>

    <!-- 비밀번호 입력 폼 -->
        <div class="password-form">
            <form action="<%=request.getContextPath()%>/member/mypage/deactivation" method="post">
			    <input type="password" name="password" placeholder="비밀번호를 입력해주세요." required />
			    <button type="submit">확인</button>
			</form>

        </div>
    </div>
    
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>

</section>

<%
    String errorMessage = (String) request.getAttribute("errorMessage");
    if (errorMessage != null) {
%>
    <script>
        alert("<%= errorMessage %>"); // 알림 창 표시
    </script>
<%
    }
%>
