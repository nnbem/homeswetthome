<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="home.member.dto.MemberVO" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/body.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/common.css">
	
<script src="<%=request.getContextPath()%>/resources/js/check.js"></script>

</head>

<!-- 본문 -->
 <section>

	<div class="content-title">
		<h1>
			<b>회원정보수정</b>
		</h1>
	</div>
	<div class="content-body">
		<div class="verification-box" style="border: none;">
			<p style="text-align: center;"></p>
			<span style="color: red;">*</span> 표시는 필수입니다.
			<br/>
			<form name="modify" id="modify-form" method="post" action="<%=request.getContextPath()%>/member/mypage/deactivation/modify"
				enctype="multipart/form-data">
			<div class="image-preview">
				<div class="image-img" style="display: flex; justify-content: center; align-items: center; padding: 2%;">
					<c:if test="${not empty member.picture}">
						<img src="${pageContext.request.contextPath}/resources/image/member/${member.mid}.jpg" alt="회원 사진"
							 style="width:27%; height:27%; object-fit: cover; padding:2%;">
					</c:if>
					<c:if test="${empty member.picture}">
						<span>이미지 없음</span>
					</c:if>
				</div>
			</div>
			<br/>
			<div class="memberInfo" style="text-align:center; padding-left:25%;">
				<div class="form-group">
					<label>&nbsp;&nbsp;아　　이　　디</label>&nbsp;
					<input type="text" id="mid" name="mid" class="form-control" value="${member.mid }" readonly>
				</div>
			<div class="form-group">
				<label><span style="color: red;">*</span> 비밀번호 &nbsp;수정</label>&nbsp;&nbsp;
				<input name="pwd" type="password" onblur="validation(this.name);"
						class="form-control radius" id="pwd" placeholder="비밀번호를 입력하세요">
			</div>
			<div class="form-group">
				<label><span style="color: red;">*</span> 비밀번호 &nbsp;확인</label>&nbsp;&nbsp;
				<input name="pwd1" type="password" class="form-control radius" 
						id="pwd1" placeholder="비밀번호를 확인하세요">
			</div>
			<div class="form-group">
					<label>&nbsp;&nbsp;이　　　　　름</label>&nbsp;
					<input type="text" id="name" name="name" class="form-control" value="${member.name }" readonly>
				</div>
			<div class="form-group">
				<label><span style="color: red;">*</span> 전　화　번　호</label>
				<input name="phone" type="text" class="form-control radius" id="phone"
						placeholder="010부터 입력해주세요" maxlength="13" required>
			</div>
			<div class="form-group">
					<label>&nbsp;&nbsp;생　년　월　일</label>&nbsp;
					<input type="text" id="birth" name="birth" class="form-control" value="${member.formatBirth }" readonly>
				</div>
				<div class="form-group">
					<label>&nbsp;&nbsp;성　　　　　별</label>&nbsp;
					<input type="text" id="sex" name="sex" class="form-control" value="${member.formatSex }" readonly>
				</div>
			<div class="login-form" style="text-align: left;">
					<label style="font-family: NanumSquare_ac; font-size:14px;"><span style="color: red;">*</span>
					&nbsp;&nbsp;이　　미　　지
					　<span style="font-family: NanumSquare_ac; font-size:14px;">※이미지는 jpg형식과 1MB만 가능합니다.</span></label>
					<br/>
					<input type="file" name="picture" id="picture" style="font-family: NanumSquare_ac;">
				</div>
				<br/>
			<div class="form-group">
				<label><span style="color: red;">*</span>&nbsp;&nbsp;주　　　　　소</label>
				<input name="address" type="text" class="form-control radius" id="address" placeholder="예) 대전광역시 중구 선화동">
			</div>
			<div class="form-group">
				<label><span style="color: red;">*</span>&nbsp;&nbsp;이　　메　　일</label>
				<input name="email" type="email" onblur="validation('email');" class="form-control radius"
						id="email" placeholder="예) example@naver.com">
			</div>
			<br />
			<div class="button-container">
				<div><button type="submit" class="button" style="width:480px;" onclick="save();">저장</button></div>				
			</div>
		</div>
		</form>
	</div>
</div>
</section>

<script>

//전화번호 유효성 검사 함수 및 하이픈 자동 추가
function validatePhone(phoneInput) {
    const phonePattern = /^010-\d{4}-\d{4}$/; // 010-XXXX-XXXX 형식
    let value = phoneInput.value.replace(/[^0-9]/g, ''); // 숫자만 남기기

    // 하이픈 추가
    if (value.length > 3 && value.length <= 7) {
        value = value.replace(/(\d{3})(\d{1,4})/, '$1-$2');
    } else if (value.length > 7) {
        value = value.replace(/(\d{3})(\d{4})(\d{1,4})/, '$1-$2-$3');
    }
    phoneInput.value = value;

    return phonePattern.test(phoneInput.value);
}

// 주소 유효성 검사 함수
function validateAddress(addressInput) {
    const addressPattern = /^[가-힣]+[시도]\s[가-힣]+[시군구]\s[가-힣]+[동읍면로리]$/;
    return addressPattern.test(addressInput.value);
}

// 이메일 유효성 검사 함수
function validateEmail(emailInput) {
    const emailPattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
    return emailPattern.test(emailInput.value);
}

//비밀번호 유효성 검사
function validatePasswords(pwdInput, pwd1Input) {
    const pwdPattern = /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,10}$/;
    
    // 비밀번호 필수 입력 검사
    if (!pwdInput.value.trim()) {
        alert("비밀번호는 필수입니다.");
        setTimeout(() => pwdInput.focus(), 0);
        return false;
    }

    // 비밀번호 형식 검사
    if (!pwdPattern.test(pwdInput.value)) {
        alert("비밀번호 형식이 올바르지 않습니다.\n영문자 숫자 조합으로 6~10글자로 입력하세요.");
        setTimeout(() => pwdInput.focus(), 0);
        return false;
    }

    // 비밀번호 일치 검사
    if (pwdInput.value !== pwd1Input.value) {
        alert("비밀번호가 일치하지 않습니다.");
        setTimeout(() => pwd1Input.focus(), 0);
        return false;
    }

    return true;
}

// 비밀번호 확인 입력란에서 포커스 이동 시 형식 오류 확인
function checkPwdFormatOnFocus(pwdInput, pwd1Input) {
    pwd1Input.addEventListener("focus", function () {
        if (!pwdInput.value.trim()) return;
        const pwdPattern = /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,10}$/;
        if (!pwdPattern.test(pwdInput.value)) {
            alert("비밀번호 형식이 올바르지 않습니다.\n영문자 숫자 조합으로 6~10글자로 입력하세요.");
        }
    });
}

// 이미지 유효성 검사 함수
function pic_check() {
    const pictureInput = document.querySelector('input[name="picture"]');
    const file = pictureInput.files[0];

    if (!file) {
        alert("이미지는 필수입니다.");
        setTimeout(() => pictureInput.focus(), 0); // alert 이후 포커스 설정
        return false;
    }

    const fileFormat = file.name.substr(file.name.lastIndexOf(".") + 1).toUpperCase();
    if (!(fileFormat === "JPG" || fileFormat === "JPEG")) {
        alert("이미지는 jpg/jpeg 형식만 가능합니다.");
        pictureInput.value = "";
        setTimeout(() => pictureInput.focus(), 0); // alert 이후 포커스 설정
        return false;
    }

    if (file.size > 1024 * 1024 * 1) {
        alert("이미지 용량은 1MB 이하만 가능합니다.");
        pictureInput.value = "";
        setTimeout(() => pictureInput.focus(), 0); // alert 이후 포커스 설정
        return false;
    }

    return true;
}

// 저장 버튼 클릭 시 전체 유효성 검사
function save() {
    const form = document.forms.modify;

    const pwdInput = form.querySelector('input[name="pwd"]');
    const pwd1Input = form.querySelector('input[name="pwd1"]');
    const phoneInput = form.querySelector('input[name="phone"]');
    const addressInput = form.querySelector('input[name="address"]');
    const emailInput = form.querySelector('input[name="email"]');

    // 비밀번호 확인
    if (!validatePasswords(pwdInput, pwd1Input)) return false;

    // 전화번호 확인
    if (!validatePhone(phoneInput)) {
        alert("전화번호는 필수입니다.);
        setTimeout(() => phoneInput.focus(), 0); // alert 이후 포커스 설정
        return false;
    }

    // 이미지 확인
    if (!pic_check()) return false;

    // 주소 확인
    if (!validateAddress(addressInput)) {
        alert("주소를 확인해주세요. 예: 대전광역시 중구 선화동");
        setTimeout(() => addressInput.focus(), 0); // alert 이후 포커스 설정
        return false;
    }

    // 이메일 확인
    if (!validateEmail(emailInput)) {
        alert("이메일 형식이 올바르지 않습니다. 예: example@naver.com");
        setTimeout(() => emailInput.focus(), 0); // alert 이후 포커스 설정
        return false;
    }
}

// 전화번호 입력 시 하이픈 자동 추가
document.addEventListener('DOMContentLoaded', function () {
    const phoneInput = document.querySelector('input[name="phone"]');
    phoneInput.addEventListener('input', function () {
        validatePhone(phoneInput);
    });

	form.submit();;
});

</script>