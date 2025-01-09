<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 페이지</title>
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/css/staff_style/s_main.css">
<body>
   <header class="header">
      <div class="logo">
         <img src="<%=request.getContextPath()%>/resources/image/logo.png"
            alt="Logo" /> <span>관리자</span>
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
            <li><a href="#">회원관리</a></li>
            <li><a href="#">인계관리</a></li>
            <li><a href="#">입양신청관리</a></li>
            <li><a href="#">유예신청관리</a></li>
            <li><a href="#">게시판관리</a></li>
            <li><a href="#">방문예약관리</a></li>
            <li><a href="#">사원관리</a></li>
         </ul>
      </nav>

      <!-- Notice -->
      <div class="notice">
         <p>※ 사무실 냉방온도는 쾌적한 근무 환경을 위해 20~22°C로 유지됩니다. 협조 부탁드립니다!</p>
      </div>

      <!-- Main Content -->
      <main class="main-content">
         <!-- Left Section -->
         <div class="left-section">
            <div class="card">
               <h3>최신인계동물</h3>
               <ul>
                  <li>네모네모 / 암컷 / 1살(추정) / 중구반려소</li>
                  <li>노랑이 / 수컷 / 2살(추정) / 동물보호소</li>
                  <li>강이 / 암컷 / 7개월(추정) / 한정보호소</li>
               </ul>
            </div>
            <div class="card">
               <h3>회원관리</h3>
               <ul>
                  <li>kkj0223 / 김xx / 010-1234-1234</li>
                  <li>lllll777 / 이xx / 010-7979-7979</li>
                  <li>HUHU / 박xx / 010-5005-5555</li>
               </ul>
            </div>
            <div class="card">
               <h3>게시판 관리</h3>
               <ul>
                  <li>제목: 방x기 / 작성자: ksdkek</li>
                  <li>제목: 정보공유 / 작성자: asdfasdf</li>
                  <li>제목: 정보공유 / 작성자: okpo</li>
               </ul>
            </div>
         </div>

         <!-- Right Section -->
         <div class="right-section">
            <div class="card stats">
               <h3>신청접수</h3>
               <div class="stats-grid">
                  <a href="#"><div>
                        <span>입양신청 대기</span>
                        <p>12건</p>
                     </div></a> <a href="#"><div>
                        <span>신청취소</span>
                        <p>8건</p>
                     </div></a> <a href="#"><div>
                        <span>유예신청 대기</span>
                        <p>2건</p>
                     </div></a> <a href="#"><div>
                        <span>전체상담처리</span>
                        <p>24건</p>
                     </div></a>
               </div>
            </div>
            <div class="card calendar">
               <h3>일정관리</h3>
               <iframe
                  src="https://calendar.google.com/calendar/embed?showTitle=0&showNav=0&showDate=0"
                  frameborder="0"></iframe>
            </div>
         </div>
      </main>

      <!-- Footer -->
   </div>
   <footer class="footer">
      <p>Copyright © 2014-2025 YourWebsiteName.io. All rights reserved.
         Version 1.2</p>
   </footer>
</body>