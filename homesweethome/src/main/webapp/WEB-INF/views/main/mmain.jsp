<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Sweet Home</title>
    <link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/css/mmain_style.css">
</head>
<body>
    <header>
        <div class="navbar">
            <div class="logo">HomeSweetHome</div>
            <nav>
                <ul>
                    <li><a href="#">센터 소개</a></li>
                    <li><a href="#">보호동물</a></li>
                    <li><a href="#">입양절차</a></li>
                    <li><a href="#">게시판</a></li>
                </ul>
            </nav>
            <div class="user-options">
                <a href="#">로그인</a>
                <a href="#">회원가입</a>
                <a href="#">우편함</a>
                <a href="#">마이페이지</a>
            </div>
        </div>
    </header>

    <main>
        <section class="intro">
            <h1>반려동물, 사랑으로 입양하세요</h1>
            <p>여러분의 삶이 행복해집니다</p>
        </section>

        <section class="animal-list">
            <h2>공고 중인 보호동물</h2>
            <div class="cards">
                <div class="card">
                    <div class="card-image"></div>
                    <div class="card-content">
                        <h3>세모</h3>
                        <p>믹스 / 암컷</p>
                    </div>
                </div>
                <div class="card">
                    <div class="card-image"></div>
                    <div class="card-content">
                        <h3>네모</h3>
                        <p>믹스 / 수컷</p>
                    </div>
                </div>
                <div class="card">
                    <div class="card-image"></div>
                    <div class="card-content">
                        <h3>동그리</h3>
                        <p>믹스 / 암컷</p>
                    </div>
                </div>
                <div class="card">
                    <div class="card-image"></div>
                    <div class="card-content">
                        <h3>세모</h3>
                        <p>믹스 / 암컷</p>
                    </div>
                </div>
                <div class="card">
                    <div class="card-image"></div>
                    <div class="card-content">
                        <h3>세모</h3>
                        <p>믹스 / 암컷</p>
                    </div>
                </div>
            </div>
            <div class="navigation">
                <button class="prev">&lt;</button>
                <button class="next">&gt;</button>
                <button class="add">+</button>
            </div>
        </section>

        <section class="adoption-info">
            <h2>입양 후기</h2>
            <div class="adoption-cards">
                <div class="adoption-card">
                    <img src="image1.jpg" alt="">
                    <p>입양 10년차 포미 후기</p>
                </div>
                <div class="adoption-card">
                    <img src="image2.jpg" alt="">
                    <p>나루가 집에 온 지 42일째</p>
                </div>
            </div>
        </section>

        <section class="info">
            <h2>정보공유</h2>
            <div class="info-cards">
                <div class="info-card">
                    <p>동물등록정보 변경</p>
                </div>
            </div>
        </section>

        <footer class="footer">
            <div class="footer-content">
                <p>개인정보처리방침 | 이용약관 | 사이트맵</p>
                <p>Copyright &copy; 2023 HomeSweetHome. All rights reserved.</p>
            </div>
        </footer>
    </main>
</body>
</html>
