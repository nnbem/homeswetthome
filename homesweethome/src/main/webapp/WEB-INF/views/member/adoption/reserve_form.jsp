<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/slidebar.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/reserve_form.css">
</head>

<div class="content-wrapper">
    <div class="content-title">
        <h1><b>센터방문예약</b></h1>
    </div>
    <div class="content-body">
        <div class="table card-body table-responsive p-0">
            <h6><b style="font-size: 20px;">방문예약신청자 정보</b></h6>
            <form id="reservation-form">
                <table class="table" id="basic">
                    <tr>
                        <td class="center_cell">신청자 성명</td>
                        <td class="left_cell">
                            <input type="text" name="name" placeholder="이름을 입력하세요" required>
                        </td>
                        <td class="center_cell">전화번호</td>
                        <td class="left_cell">
                            <input type="text" name="phone" placeholder="010-1234-1234" 
                                   maxlength="13" required>
                        </td>
                    </tr>
                    <tr>
                        <td class="center_cell">방문예정일</td>
                        <td class="left_cell">
                            <input type="date" name="visit-date" required>
                        </td>
                        <td class="center_cell">방문예정일시</td>
                        <td class="left_cell">
                            <input type="time" name="visit-time" step="1800" required>
                        </td>
                    </tr>
                    <tr>
                        <td class="center_cell">내용</td>
                        <td colspan="3" class="left_cell">
                            <textarea name="content" placeholder="내용을 입력하세요" required></textarea>
                        </td>
                    </tr>
                </table>
                <button type="submit" class="submit_button">제출하기 →</button>
            </form>
        </div>
    </div>
</div>

<script>
    // 전화번호 유효성 검사 함수
    function validatePhone(phone) {
        const phonePattern = /^010-\d{4}-\d{4}$/; // 010-XXXX-XXXX 형식
        return phonePattern.test(phone);
    }

    // 폼 제출 이벤트 리스너
    function handleFormSubmit(event) {
        event.preventDefault(); // 기본 제출 동작 방지

        const form = event.target;
        const nameInput = form.querySelector('input[name="name"]');
        const phoneInput = form.querySelector('input[name="phone"]');
        const dateInput = form.querySelector('input[name="visit-date"]');
        const timeInput = form.querySelector('input[name="visit-time"]');
        const contentInput = form.querySelector('textarea[name="content"]');

        const phoneValue = phoneInput.value;

        // 모든 필드 유효성 검사
        if (!nameInput.value.trim()) {
            alert('이름을 입력해주세요.');
            nameInput.focus();
            return;
        }

        if (!validatePhone(phoneValue)) {
            alert('전화번호를 010-1234-1234 형식으로 입력해주세요.');
            phoneInput.focus();
            return;
        }

        if (!dateInput.value) {
            alert('방문예정일을 선택해주세요.');
            dateInput.focus();
            return;
        }

        if (!timeInput.value) {
            alert('방문예정일시를 선택해주세요.');
            timeInput.focus();
            return;
        }

        if (!contentInput.value.trim()) {
            alert('내용을 입력해주세요.');
            contentInput.focus();
            return;
        }

        // 유효성 검사를 모두 통과한 경우
        alert('제출이 완료되었습니다!');
        window.history.back(); // 페이지 뒤로 이동
    }

    // 전화번호 실시간 입력값 필터링
    function handlePhoneInput(event) {
        const input = event.target;
        input.value = input.value
            .replace(/[^0-9\-]/g, '') // 숫자와 '-'만 허용
            .replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3') // 자동으로 하이픈 추가
            .substr(0, 13); // 최대 길이 13자 제한
    }

    // 이벤트 리스너 등록
    document.addEventListener('DOMContentLoaded', function () {
        const form = document.getElementById('reservation-form');
        const phoneInput = form.querySelector('input[name="phone"]');

        // 제출 이벤트 리스너
        form.addEventListener('submit', handleFormSubmit);

        // 전화번호 입력 이벤트 리스너
        phoneInput.addEventListener('input', handlePhoneInput);
    });
</script>
