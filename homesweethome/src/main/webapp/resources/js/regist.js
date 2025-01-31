	var valid_data = {
			email:{
				pattern:/^[a-z0-9\.\-_]+@([a-z0-9\-]+\.)+[a-z]{2,6}$/g,
				message:"이메일 형식이 아닙니다."
			},
			name:{
				pattern:/^[가-힣]{2,6}$/g,
				message:"이름은 한글 2~6글자 입니다."
			},
			id:{
				pattern:/^[a-z]+[a-zA-Z0-9]{3,12}$/g,
				message:"아이디 형식이 올바르지 않습니다."
			},
			pwd:{
				pattern:/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/g,
				message:"패스워드 형식이 올바르지 않습니다.\n영문자 숫자 특수문자 조합으로 8~20글자로 하세요."
			}
	}

	function validation(elementName){			
		let flag = true;
		
		let regExp = valid_data[elementName].pattern;
		let message =  valid_data[elementName].message;
		
		let input = $('input[name="'+elementName+'"]');		
		
		if(input.val()){ 
			if(!input.val().match(regExp)){
				alert(message);
				input.val('');
				flag=false;
			}	
		}else{
			flag=false;
		}
		
		return flag;
	}
	
	
	function picture_go(){
		//alert("click file");
		let pictureInput = document.querySelector("input[name='picture']");
		let file = pictureInput.files[0];
		
		//이미지 확장자 jpg 확인
	    var fileFormat = file.name.substr(file.name.lastIndexOf(".")+1).toUpperCase();
		
	    if(!(fileFormat=="JPG" || fileFormat=="JPEG")){
	        alert("이미지는 jpg/jpeg 형식만 가능합니다.");
	        pictureInput.value="";      
	        return;
	    }
	    
	    //이미지 파일 용량 체크
	    if(file.size>1024*1024*1){
	         alert("사진 용량은 1MB 이하만 가능합니다.");
	         pictureInput.value="";
	         return;
	     };
    
	     let pictureView = document.querySelector("#pictureView");
	 	 document.querySelector('#inputFileName').value=file.name; 
	 	 
	 	if(file){
			var reader = new FileReader();
			
			 reader.onload = function (e) {
				pictureView.style.backgroundImage = "url("+e.target.result+")";
			 	pictureView.style.backgroundPosition="center";
			 	pictureView.style.backgroundSize="cover";
			 	pictureView.style.backgroundRepeat="no-repeat";		
			 }
			 
			 reader.readAsDataURL(file);
	 	}
	    
	}

	var checkID = "";
function idCheck_go() {
    let inputID = $('input[name="eid"]');
    if (!inputID.val()) {
        alert("사원 아이디를 입력하세요.");
        inputID.focus();
        return;
    }

    // 사원 ID가 st로 시작하고 뒤에 6자리 숫자인지 확인
    const idPattern = /^st\d{6}$/;
    if (!idPattern.test(inputID.val())) {
        alert("사원 아이디는 'st'로 시작하고 뒤에 6자리 숫자를 입력해야 합니다. 예: st250126");
        inputID.focus();
        return;
    }

    // AJAX 요청을 통해 중복 확인
     $.ajax({
        url: `/staff/employee/idCheck`, // 서버 URL
        method: "GET",
        data: { eid: inputID.val() }, // 입력된 사원번호 전달
        success: function (data) {
            console.log("AJAX 응답 데이터:", data);
            if (data === "duplicated") {
                alert("이미 사용 중인 아이디입니다.");
                inputID.focus();
            } else if (data === "available") {
                alert("사용 가능한 아이디입니다.");
                // 필드 값 변경하지 않음
            }
        },
        error: function (error) {
            console.error("EID 중복 체크 오류:", error);
            alert("중복 체크 중 오류가 발생했습니다. 다시 시도해주세요.");
        },
    });
}


   
	
	
	
	
	
	
	
	
	