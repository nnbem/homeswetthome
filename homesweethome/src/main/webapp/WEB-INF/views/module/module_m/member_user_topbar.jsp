<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
</head>
<body>
<%
    // 서버에서 전달된 세션 만료 시간 설정
    Long sessionExpireTime = (Long) request.getAttribute("sessionExpireTime");
    if (sessionExpireTime == null) {
        sessionExpireTime = System.currentTimeMillis() + 60 * 60 * 1000; // 기본값: 60분
    }
%>
   <!-- 상단 -->
   <header>
      <div class="header_inner">
         <!-- 상단 바 -->
         <div class="header_top">
            <div class="top_bar">
               <img src="<%=request.getContextPath()%>/resources/image/time_1.png" alt="Time">
               <a href="#">🕒 세션 만료: <span id="session-timer">60분</span></a>
               <button id="extend-session" style="margin-left: 10px;">연장하기</button>
               <a href="/logout">로그아웃</a>
               <a href="#">우편함</a>
               <a href="#">마이페이지</a>
            </div>
         </div>

         <div class="menu_inner">
            <div class="header_menu">
               <!-- 로고 -->
               <div class="logo">
                  <img src="<%=request.getContextPath()%>/resources/image/logo.png"
                     alt="Logo"> <a href="/member/main">HomeSweetHome</a>
               </div>

               <!-- 메인메뉴 -->
               <ul class="menu_main">
                  <li><a href="#">센터 소개</a></li>
                  <li><a href="#">보호동물</a></li>
                  <li><a href="/member/adoption/main">입양절차</a></li>
                  <li><a href="/member/board/main">게시판</a></li>
                  <li><a href="#">☰</a></li>
               </ul>
            </div>
         </div>
      </div>
   </header>

   <!-- 본문 -->
   <section>
      <div class="inner_cent">
         <!-- Sidebar -->
         <div class="sidebar">
            <h1><b>입양절차</b></h1>
            <div class="sideMenu">
               <ul class="sideMenu lists">
                  <li class="sideMenu">
                     <ul class="sideMenu list">
                        <li class="list">
                           <a href="/member/adoption/main">절　차</a>
                        </li>
                        <li class="list">
                           <a href="/member/adoption/education">온라인교육</a>
                        </li>
                        <li class="list">
                           <a href="/member/adoption/suit">적합성점검표</a>
                        </li>
                        <li class="list">
                           <a href="/member/adoption/reserve">센터방문예약</a>
                        </li>
                        <li class="list">
                           <a href="/member/adoption/application">입양신청</a>
                        </li>
                     </ul>
                  </li>
               </ul>
            </div>
         </div>
      </div>
   </section>

<script>
// 서버에서 전달된 세션 만료 시간 (밀리초 단위)
let sessionExpireTime = <%= sessionExpireTime != null ? sessionExpireTime : "new Date().getTime() + 60 * 60 * 1000" %>;
console.log("sessionExpireTime:", sessionExpireTime); // 디버깅용

let extendCount = 0; // 연장 횟수 카운터
const maxExtends = 3; // 최대 연장 가능 횟수
const timerElement = document.getElementById("session-timer");
const extendButton = document.getElementById("extend-session");

if (!timerElement || !extendButton) {
    console.error("HTML 요소가 제대로 로드되지 않았습니다.");
}

// 세션 타이머 업데이트 함수
function updateSessionTimer() {
    const now = new Date().getTime(); // 현재 시간
    const timeRemaining = sessionExpireTime - now; // 남은 시간 계산

    console.log("남은 시간:", timeRemaining); // 디버깅용

    if (timeRemaining <= 0) {
        timerElement.innerText = "0분";
        alert("세션이 만료되었습니다. 다시 로그인해주세요.");
        window.location.href = "/logout"; // 자동 로그아웃 처리
    } else {
        const minutes = Math.ceil(timeRemaining / (1000 * 60)); // 남은 분 계산 (올림)
        timerElement.innerText = `${minutes}분`;
    }
}

// 세션 연장 함수 (60분으로 초기화)
function extendSession() {
    if (extendCount >= maxExtends) {
        alert("최대 연장 횟수를 초과했습니다.");
        return;
    }

    fetch("/extend-session", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
        },
    })
        .then((response) => response.json())
        .then((data) => {
            console.log("연장 응답:", data); // 디버깅용
            if (data.success) {
                extendCount++; // 연장 횟수 증가
                alert(`세션이 60분으로 초기화되었습니다! (${extendCount}/${maxExtends}번 사용됨)`);
                sessionExpireTime = new Date().getTime() + 60 * 60 * 1000; // 현재 시간 + 60분
                updateSessionTimer(); // 타이머 즉시 업데이트

                // 연장 횟수 초과 시 버튼 비활성화
                if (extendCount >= maxExtends) {
                    extendButton.disabled = true;
                    extendButton.innerText = "연장 불가";
                }
            } else {
                alert(data.message || "세션 연장에 실패했습니다.");
            }
        })
        .catch((error) => {
            console.error("세션 연장 중 오류:", error);
            alert("세션 연장 중 오류가 발생했습니다.");
        });
}

// 이벤트 리스너 설정
if (extendButton) {
    extendButton.addEventListener("click", extendSession);
} else {
    console.error("'연장하기' 버튼을 찾을 수 없습니다.");
}

// 1분마다 타이머 업데이트
setInterval(updateSessionTimer, 60000); // 60초마다 실행
updateSessionTimer(); // 페이지 로드 시 즉시 실행
</script>