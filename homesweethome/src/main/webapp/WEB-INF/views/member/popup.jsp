<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/slidebar.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/popup.css">
</head>
	<div id="popup" class="popup">
        <div class="popup-content">
            <h2>어쩌면 운명 같은 만남일지도 몰라요</h2>
            <div id="animal-cards" class="cards">
                <!-- 동적으로 카드 추가 -->
            </div>
            <div class="popup-actions">
                <button onclick="closePopup()">닫기</button>
                <button onclick="closeForToday()">오늘 하루동안 닫기</button>
            </div>
        </div>
    </div>
<script>
// 팝업 닫기
function closePopup() {
    document.getElementById('popup').style.display = 'none';
}

// 오늘 하루 닫기
function closeForToday() {
    const today = new Date();
    const expires = new Date(today);
    expires.setHours(23, 59, 59, 999); // 자정까지 쿠키 설정
    document.cookie = `popupClosed=true; expires=${expires.toUTCString()}; path=/`;
    closePopup();
}

// 사용자 취향에 따라 동물 데이터 가져오기
function fetchAnimalCards(preference) {
    fetch(`/api/animals?type=${preference}`)
        .then(response => response.json())
        .then(data => {
            const cardsContainer = document.getElementById('animal-cards');
            cardsContainer.innerHTML = ''; // 기존 카드 초기화
            data.forEach(animal => {
                const card = `
                    <div class="card">
                        <div class="card-header">
                            <img src="${animal.image_url}" alt="${animal.name}" style="width: 100%; height: 100%;">
                        </div>
                        <div class="card-footer">
                            <p>${animal.name}</p>
                            <p>${animal.type}/${animal.gender}</p>
                        </div>
                    </div>
                `;
                cardsContainer.innerHTML += card;
            });
        })
        .catch(err => console.error('Error fetching animals:', err));
}

// 페이지 로드 시 팝업 크기 설정 및 카드 가져오기
document.addEventListener('DOMContentLoaded', () => {
    const userPreference = '강아지'; // 사용자 취향 설정
    fetchAnimalCards(userPreference);

    // 팝업 크기 동적 설정
    const popupContent = document.querySelector('.popup-content');
    popupContent.style.width = '500px'; // 너비 500px
    popupContent.style.height = '400px'; // 높이 400px
});
</script>