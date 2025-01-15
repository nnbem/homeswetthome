	var valid_data = {
			mid:{
				pattern:/^[a-z]+[a-zA-Z0-9]{2,6}$/g,
				message:"아이디 형식이 올바르지 않습니다. \n영문자 시작으로 3~6글자로 입력하세요."
			},
			pwd:{
				pattern:/^(?=.*[a-zA-Z])(?=.*[0-9]).{6,10}$/,
				message:"비밀번호 형식이 올바르지 않습니다.\n영문자 숫자 조합으로 6~10글자로 입력하세요."
			},
			name:{
				pattern:/^[가-힣]{2,6}$/g,
				message:"이름은 한글 2~6글자로 입력하세요."
			},
			phone:{
				pattern:/^(01[016789]{1})-?[0-9]{3,4}-?[0-9]{4}$/,
				message:"전화번호 형식이 올바르지 않습니다.\n010-1234-1234"
			},
			email:{
				pattern:/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i,
				message:"이메일 형식이 올바르지 않습니다.\nexample@naver.com"
			}
	}

	function validation(elementName) {			
	    let flag = true;
	    let regExp = valid_data[elementName].pattern;
	    let message = valid_data[elementName].message;
	    let input = $('input[name="'+elementName+'"]');		
	    if (input.val()) { 
	        if (!input.val().match(regExp)) {
	            alert(message);
	            input.val('');
	            input.focus();
	            flag = false;
        }	
    } else {
        flag = false;
    }
    return flag;
}
	
	
	function pic_check() {
    let pictureInput = document.querySelector("input[name='picture']");
    let file = pictureInput.files[0];
    if (!file) {
        alert("이미지는 필수입니다.");
        return false;
    }
    var fileFormat = file.name.substr(file.name.lastIndexOf(".") + 1).toUpperCase();
    if (!(fileFormat === "JPG" || fileFormat === "JPEG")) {
        alert("이미지는 jpg/jpeg 형식만 가능합니다.");
        pictureInput.value = "";
        return false;
    }
    if (file.size > 1024 * 1024 * 1) {
        alert("이미지 용량은 1MB 이하만 가능합니다.");
        pictureInput.value = "";
        return false;
    }
    return true;
}

	var check_ID = "";
	function check_ID_go() {
	    let inputID = $('input[name="mid"]');
	    if (!inputID.val()) {
	        alert("아이디를 입력하세요");
	        inputID.focus();
	        return;			
	    }
		
		if (!validation('mid')) return;
	    $.ajax({
	        url: "checkid?mid="+inputID.val(),
	        method: "get",
	        success: function(data) {				
	            if (data == "duplicated") {
	                alert("이미 사용중인 아이디입니다.");
	                inputID.focus();
	                return;		
	            } else {
	                alert("사용 가능한 아이디입니다.")
	                check_ID = inputID.val();
	                $('input[name="pwd"]').focus();
	                return;
	            }
	        },
	        error: function(error) {
	            AjaxErrorSecurityRedirectHandler(error.status);
	        }
	    });
}