<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
</head>
<body class="body">
   <header class="header">
      <div class="logo">
         <img src="<%=request.getContextPath()%>/resources/image/logo.png"alt="Logo" />
         <div class="main">
         	<a href="/staff/main">관리자</a>
         </div>
      </div>
      <div class="logout">
         <a href="#">로그아웃</a>
      </div>
   </header>
   <div class="wrapper">
      <!-- Header -->

      <!-- Navigation -->
      <nav class="main_menu">
         <ul>
            <li><a href="#">보호동물관리</a></li>
            <li><a href="/staff/member/list">회원관리</a></li>
            <li><a href="/staff/receive">인계관리</a></li>
            <li><a href="/staff/adoption">입양신청관리</a></li>
            <li><a href="/staff/graceperiod">유예신청관리</a></li>
            <li><a href="/staff/bord/notice">게시판통합관리</a></li>
            <li><a href="/staff/reserve/">방문예약관리</a></li>
            <li><a href="/staff/employee">사원관리</a></li>
         </ul>
      </nav>

	
		

	<!-- /.sidebar -->