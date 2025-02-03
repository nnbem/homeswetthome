<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HomeSweetHome</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member_style/m_main.css">
</head>
<body>
   <!-- 상단 -->
   <header>
      <div class=header_inner>
         <!-- 상단 바 -->
         <div class="header_top">
            <div class="top_bar" >
               <a href="/member/login">로그인</a> <a href="/member/join">회원가입</a> <a href="#" style="display: none;">우편함</a> <a
                  href="/member/join" style="display: none;">마이페이지</a>
            </div>
         </div>

         <div class="menu_inner">
            <div class="header_menu">
               <!-- 로고 -->
               <div class="logo">
                  <img src="<%=request.getContextPath()%>/resources/image/logo.png"
                     alt="Logo"> <a href="/member/bmain">HomeSweetHome</a>
               </div>

               <!-- 메인메뉴 -->
               <ul class="menu_main">
                  <li><a href="/member/intro">센터 소개</a></li>
                  <li><a href="#">보호동물</a></li>
                  <li><a href="#">입양절차</a></li>
                  <li><a href="/member/board">게시판</a></li>
                  <li><a href="#">☰</a></li>
               </ul>
            </div>
         </div>
      </div>
   </header>

   <!-- 본문 -->
   <section>
      <div class="inner_cent">
         <div class="banner">
            <div class="banner-content">
               <h2>
                  반려동물, <span>사랑으로 입양하세요</span>
               </h2>
               <p>여러분의 삶이 행복해집니다</p>
            </div>
         </div>
         <!-- banner -->
         <br/>
         <br/>
         <br/>
         <div class="wrap">
            <h3>
               <b style="font-size: 30px;">공고 중</b> &nbsp;&nbsp;&nbsp;&nbsp;
               <small style="font-size: 16px; font-family: NanumSquare_ac;">#HomeSweetHome의 새식구를 소개합니다</small>
            </h3>
            <br/>
            <div class="animal-card">
               <div class="card">
                   <div class="card_content">
                       <h3>믹스</h3>
                       <p>암컷</p>
                       <span class="status_badge">입양가능</span>
                   </div>
                   <div class="image_container">
                       <img src="<%=request.getContextPath()%>/resources/image/dog_10.png" alt="강아지 이미지">
                   </div>
               </div>
               <div class="card">
                   <div class="card_content">
                       <h3>믹스</h3>
                       <p>암컷</p>
                       <span class="status_badge">입양가능</span>
                   </div>
                   <div class="image_container">
                       <img src="<%=request.getContextPath()%>/resources/image/dog_10.png" alt="강아지 이미지">
                   </div>
               </div>
               <div class="card">
                   <div class="card_content">
                       <h3>믹스</h3>
                       <p>암컷</p>
                       <span class="status_badge">입양가능</span>
                   </div>
                   <div class="image_container">
                       <img src="<%=request.getContextPath()%>/resources/image/dog_10.png" alt="강아지 이미지">
                   </div>
               </div>
               <div class="card">
                   <div class="card_content">
                       <h3>믹스</h3>
                       <p>암컷</p>
                       <span class="status_badge">입양가능</span>
                   </div>
                   <div class="image_container">
                       <img src="<%=request.getContextPath()%>/resources/image/dog_10.png" alt="강아지 이미지">
                   </div>
               </div>
               <div class="card">
                   <div class="card_content">
                       <h3>믹스</h3>
                       <p>암컷</p>
                       <span class="status_badge">입양가능</span>
                   </div>
                   <div class="image_container">
                       <img src="<%=request.getContextPath()%>/resources/image/dog_10.png" alt="강아지 이미지">
                   </div>
               </div>
            </div>
            
            

            <br/>
            <br/>
            <h3>
               <b style="font-size: 30px;">입양가능</b> &nbsp;&nbsp;&nbsp;&nbsp;
               <small style="font-size: 16px; font-family: NanumSquare_ac;">#HomeSweetHome의 새가족을 기다리고 있어요</small>
            </h3>
            <br/>
            <div class="animal-card">
               <div class="card">
                   <div class="card_content">
                       <h3>믹스</h3>
                       <p>암컷</p>
                       <span class="status_badge">입양가능</span>
                   </div>
                   <div class="image_container">
                       <img src="<%=request.getContextPath()%>/resources/image/dog_10.png" alt="강아지 이미지">
                   </div>
               </div>
               <div class="card">
                   <div class="card_content">
                       <h3>믹스</h3>
                       <p>암컷</p>
                       <span class="status_badge">입양가능</span>
                   </div>
                   <div class="image_container">
                       <img src="<%=request.getContextPath()%>/resources/image/dog_10.png" alt="강아지 이미지">
                   </div>
               </div>
               <div class="card">
                   <div class="card_content">
                       <h3>믹스</h3>
                       <p>암컷</p>
                       <span class="status_badge">입양가능</span>
                   </div>
                   <div class="image_container">
                       <img src="<%=request.getContextPath()%>/resources/image/dog_10.png" alt="강아지 이미지">
                   </div>
               </div>
               <div class="card">
                   <div class="card_content">
                       <h3>믹스</h3>
                       <p>암컷</p>
                       <span class="status_badge">입양가능</span>
                   </div>
                   <div class="image_container">
                       <img src="<%=request.getContextPath()%>/resources/image/dog_10.png" alt="강아지 이미지">
                   </div>
               </div>
               <div class="card">
                   <div class="card_content">
                       <h3>믹스</h3>
                       <p>암컷</p>
                       <span class="status_badge">입양가능</span>
                   </div>
                   <div class="image_container">
                       <img src="<%=request.getContextPath()%>/resources/image/dog_10.png" alt="강아지 이미지">
                   </div>
               </div>
            </div>
         </div>
         <!--wrap  -->

         <div class="additional-sections">
            <div class="section-row">
               <div class="adoption-review">
                  <h3>
                     입양후기 <small>#새 삶을 시작한 반려동물들의 소식을 들려주세요</small>
                  </h3>
                  <div class="review-cards">
                     <div class="review-card">
                        <img
                           src="<%=request.getContextPath()%>/resources/image/review_1.png"
                           alt="입양 후기 이미지">
                        <p>입양 10년차 포미 후기</p>
                        <span>2024-12-12</span>
                     </div>
                     <div class="review-card">
                        <img
                           src="<%=request.getContextPath()%>/resources/image/review_2.png"
                           alt="입양 후기 이미지">
                        <p>나루가 집에 온 지 42일째</p>
                        <span>2024-11-28</span>
                     </div>
                  </div>
               </div>

               <div class="info-sharing">
                  <h3>
                     정보공유 <small>#보호동물 관련 정보, 팁, 소식을 자유롭게 공유해주세요</small>
                  </h3>
                  <div class="info-cards">
                     <div class="info-card">
                        <img
                           src="<%=request.getContextPath()%>/resources/image/sharing_1.png"
                           alt="정보 이미지">
                        <p>반려동물공원 가보기</p>
                        <span>2024-12-20</span>
                     </div>
                     <div class="info-card">
                        <img
                           src="<%=request.getContextPath()%>/resources/image/sharing_2.png"
                           alt="정보 이미지">
                        <p>탄방점 버거스에서</p>
                        <span>2024-12-18</span>
                     </div>
                  </div>
               </div>
            </div>
         </div>

         <div class="contact-section">
            <div class="container">
               <div class="asdf">
                  <div class="info_section">
                     <h1>대전동물보호센터</h1>
                     <p>
                        <b>대표전화</b> <br /> <strong
                           style="font-size: 30px; color: #3F3F3F;">042-270-7239</strong>
                     </p>
                     <p>
                        <b>팩스번호 042-825-1330</b>
                     </p>
                     <ul class="time_list">
                        <li style="font-family: NanumSquare_ac;"><b>운영시간</b> &nbsp; 10:00~18:00</li>
                        <li style="font-family: NanumSquare_ac;"><b>점심시간</b> &nbsp; 12:00~13:00</li>
                        <li style="font-family: NanumSquare_ac;"><b>입양가능 시간</b> &nbsp; 13:00 ~ 16:00</li>
                     </ul>
                  </div>
                  <div class="map_section">
                     <button class="details_button">자세히보기 ➜</button>
                     <h2>오시는 길</h2>
                     <img
                        src="<%=request.getContextPath()%>/resources/image/main_map.png"
                        alt="지도">
                  </div>
               </div>
            <div class="button_container">
               <div class="button_item">
                  <img src="<%=request.getContextPath()%>/resources/image/cat_icon.png" alt="동물등록정보 연결 및 변경방법">
                  <p>동물등록정보 연결 및 변경방법</p>
               </div>
               <div class="button_item">
                  <img src="<%=request.getContextPath()%>/resources/image/siren_icon.png" alt="유기동물신고처">
                  <p>유기동물신고처</p>
               </div>
               <div class="button_item">
                  <img src="<%=request.getContextPath()%>/resources/image/online_icon.png" alt="온라인교육">
                  <p>온라인교육</p>
               </div>
            </div>
            </div>
         </div>
      </div>
      <!-- inner -->


   </section>

   <!-- 하단 -->
   <footer class="footer">
      <div class="footer-top">
         <a href="#">개인정보처리방침</a> | <a href="#">영상정보처리기기 운영·관리방침</a> | <a
            href="#">누리집개선의견</a> | <a href="#">오시는 길</a>
      </div>
      <div class="footer-middle">
         <p>(34001) 대전광역시 유성구 금고로 7(금고동) 대전반려동물공원</p>
         <p>(34001) 대전광역시 유성구 금남구청로 123(금남로) HomeSweetHome / 대표전화 (042)
            270-7239 / 팩스번호 (042) 825-1330</p>
      </div>
      <div class="footer-bottom">
         <p>COPYRIGHT 2023 (c) DAEJEON METROPOLITAN CITY. ALL RIGHTS
            RESERVED.</p>
      </div>
   </footer>
</body>
</html>