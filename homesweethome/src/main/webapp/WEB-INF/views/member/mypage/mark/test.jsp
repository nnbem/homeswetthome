<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>찜목록</title>
<style>
    .content-wrapper {
        text-align: center;
        margin: 20px auto;
    }

    .content-title {
        margin-bottom: 20px;
    }

    .category {
        margin: 30px 0;
        font-weight: bold;
        text-align: left;
        width: 80%;
        margin: 20px auto;
    }

    .card-container {
        position: relative;
        width: 80%;
        overflow: hidden; /* 화면 밖의 카드가 보이지 않도록 설정 */
        margin: auto;
    }

    .card-list-wrapper {
        display: flex;
        transition: transform 0.5s ease; /* 부드러운 이동 효과 */
    }

    .card-list {
        flex: 0 0 200px; /* 카드 하나의 크기 고정 */
        margin: 10px;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        text-align: center;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .image-cat {
        height: 150px;
        background-color: #f4f4f4;
        margin-bottom: 10px;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .heart-btn {
        background: none;
        border: none;
        font-size: 20px;
        cursor: pointer;
    }

    .heart-btn.active {
        color: red; /* 찜 표시된 상태 */
    }

    .slider-btn {
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        background: #333;
        color: white;
        border: none;
        border-radius: 50%;
        font-size: 18px;
        width: 30px;
        height: 30px;
        cursor: pointer;
    }

    .slider-btn.left {
        left: -10px; /* 위치 조정 */
    }

    .slider-btn.right {
        right: -10px; /* 위치 조정 */
    }

    .slider-btn:hover {
        background: #555;
    }
</style>
</head>
<body>
    <div class="content-wrapper">
        <div class="content-title">
            <h1><b>찜목록</b></h1>
        </div>

        <!-- 공고중 -->
        <div class="category">공고중</div>
        <button class="slider-btn left" onclick="moveSlide('announcement', -1)">&#8249;</button>
        <div class="card-container">
            <div class="card-list-wrapper" id="announcement">
                <!-- 카드 리스트 -->
                <div class="card-list">
                    <div class="image-cat">
                        <button class="heart-btn">❤️</button>
                    </div>
                    <div class="info">
                        <p><strong>스코티시폴드</strong> | 암컷</p>
                        <p>관리번호: 24-4-154</p>
                    </div>
                </div>
                <div class="card-list">
                    <div class="image-cat">
                        <button class="heart-btn">❤️</button>
                    </div>
                    <div class="info">
                        <p><strong>코리안숏헤어</strong> | 수컷</p>
                        <p>관리번호: 24-4-155</p>
                    </div>
                </div>
                <div class="card-list">
                    <div class="image-cat">
                        <button class="heart-btn">❤️</button>
                    </div>
                    <div class="info">
                        <p><strong>스코티시폴드</strong> | 암컷</p>
                        <p>관리번호: 24-4-156</p>
                    </div>
                </div>
            </div>
        </div>
        <button class="slider-btn right" onclick="moveSlide('announcement', 1)">&#8250;</button>

        <!-- 치료중 -->
        <div class="category">치료중</div>
        <button class="slider-btn left" onclick="moveSlide('treatment', -1)">&#8249;</button>
        <div class="card-container">
            <div class="card-list-wrapper" id="treatment">
                <div class="card-list">
                    <div class="image-cat">
                        <button class="heart-btn">❤️</button>
                    </div>
                    <div class="info">
                        <p><strong>믹스</strong> | 수컷</p>
                        <p>관리번호: 24-4-284</p>
                    </div>
                </div>
                <div class="card-list">
                    <div class="image-cat">
                        <button class="heart-btn">❤️</button>
                    </div>
                    <div class="info">
                        <p><strong>믹스</strong> | 수컷</p>
                        <p>관리번호: 24-4-284</p>
                    </div>
                </div>
                <div class="card-list">
                    <div class="image-cat">
                        <button class="heart-btn">❤️</button>
                    </div>
                    <div class="info">
                        <p><strong>믹스</strong> | 수컷</p>
                        <p>관리번호: 24-4-284</p>
                    </div>
                </div>
                <div class="card-list">
                    <div class="image-cat">
                        <button class="heart-btn">❤️</button>
                    </div>
                    <div class="info">
                        <p><strong>믹스</strong> | 암컷</p>
                        <p>관리번호: 24-4-285</p>
                    </div>
                </div>
            </div>
        </div>
        <button class="slider-btn right" onclick="moveSlide('treatment', 1)">&#8250;</button>

        <!-- 입양가능 -->
        <div class="category">입양가능</div>
        <button class="slider-btn left" onclick="moveSlide('adoptable', -1)">&#8249;</button>
        <div class="card-container">
            <div class="card-list-wrapper" id="adoptable">
                <div class="card-list">
                    <div class="image-cat">
                        <button class="heart-btn">❤️</button>
                    </div>
                    <div class="info">
                        <p><strong>믹스</strong> | 수컷</p>
                        <p>관리번호: 24-5-36</p>
                    </div>
                </div>
            </div>
        </div>
        <button class="slider-btn right" onclick="moveSlide('adoptable', 1)">&#8250;</button>
    </div>

    <!-- JavaScript -->
    <script>
        function moveSlide(wrapperId, direction) {
            const wrapper = document.getElementById(wrapperId);
            const cardWidth = 220; // 카드 하나의 너비
            const totalCards = wrapper.querySelectorAll(".card-list").length;
            const containerWidth = wrapper.parentNode.clientWidth;

            let currentPosition = parseInt(wrapper.getAttribute("data-position") || "0", 10);
            const maxPosition = -(totalCards * cardWidth - containerWidth);

            currentPosition += direction * cardWidth;
            if (currentPosition > 0) currentPosition = 0;
            if (currentPosition < maxPosition) currentPosition = maxPosition;

            wrapper.style.transform = `translateX(${currentPosition}px)`;
            wrapper.setAttribute("data-position", currentPosition);
        }

        document.querySelectorAll(".heart-btn").forEach(button => {
            button.addEventListener("click", () => {
                button.classList.toggle("active");
            });
        });
    </script>
</body>
</html>
