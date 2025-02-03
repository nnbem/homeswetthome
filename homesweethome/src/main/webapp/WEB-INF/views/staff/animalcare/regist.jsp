<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/animalcare.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_common.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/injection.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/table.css">
	<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/css/staff_style/staff_style.css">
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>

<body>
<div class="innerWrapper">
	<div class="content">
		<h1><b>동물 등록</b></h1>
		<div class="detail">
			<div class="text-wrapper" id="text-wrapper">
				<div class="id">
					<b>담당자</b><i>${loginEmployee.eid}</i>
				</div>
			</div>
			<div class="button-wrapper" id="button-wrapper">
				<button class="regist" type="button" onclick="regist_go();">동물 등록</button>
				<button class="cancle">취소</button>
			</div>
		</div>
		<form id="post-form" method="post" action="regist/post" role="form" name="registForm" enctype="multipart/form-data">
			<div class="table card-body table-responsive p-0">
				<table class="table" id="basic">
	               <tr>
	                   <td class="basic-title">보호동물ID</td>
	                   <td><input type="text" title="보호동물ID" name="aid" class="table-input-text notNull" value="${aid }" id="input-aid" readonly="readonly"></td>
	                   <td class="basic-title">이름</td>
	                   <td><input type="text" title="이름" class="table-input-text notNull" name="name"></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">상태</td>
	                   <td><input type="text" title="상태" class="table-input-text notNull" name="state" value="공고중" readonly="readonly"></td>
				   	   <td class="basic-title">성별</td>
	                   <td>수컷<input type="radio" title="성별" class="table-input-checkbox" name="gender" value="수컷">
	                   		암컷<input type="radio" title="성별" class="table-input-checkbox" name="gender" value="암컷"></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">모색</td>
	                   <td><input type="text" title="모색" class="table-input-text notNull" name="color"></td>
	                   <td class="basic-title">몸무게</td>
	                   <td><input type="text" title="몸무게" class="table-input-text notNull notString" name="weight"></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">중성화 유무</td>
	                   <td>유<input type="radio" title="중성화" class="table-input-checkbox" name="neutralization" value="유">
	                   		무<input type="radio" title="중성화" class="table-input-checkbox" name="neutralization" value="무"></td>
	                   <td class="basic-title">추정 나이</td>
	                   <td><input type="text" title="추정 나이" class="table-input-text notNull notString" name="age"></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">종류</td>
	                   <td>개<input type="radio" title="종류" class="table-input-checkbox" name="kind" value="개">
	                   		고양이<input type="radio" title="종류" class="table-input-checkbox" name="kind" value="고양이">
	                   		기타<input type="radio" title="종류" class="table-input-checkbox" name="kind" value="기타"></td>
	                   <td class="basic-title">품종</td>
	                   <td>
                   		<select name="breed" style="border: none;">
                   			<option selected disabled hidden value="">품종</option>
			            	<c:if test="${not empty breedList }">
				            	<c:forEach var="breed" items="${breedList }">
				            		<option value="${breed.breed }">${breed.breed }</option>
				            	</c:forEach>
			            	</c:if>
			            </select>
	                   </td>	
	               </tr>
	               <tr>
					   <td class="basic-title">성격</td>
	                   <td colspan="3"><input type="text" title="성격" class="table-input-text notNull" name="character"></td>
	               </tr>
	               <tr>
	                   <td class="basic-title">비고</td>
	                   <td colspan="3"><input type="text" title="비고" class="table-input-text notNull" name="other"></td>
	               </tr>
	               <tr>
	               	   <td>이미지 업로드</td>
	               	   <td colspan="3">
		            	   	<div class="card-header">
								<h5 style="display:inline;">첨부파일 : </h5>
								&nbsp;&nbsp;<button class="btn btn-xs btn-primary"
								onclick="addFile_go();"	type="button" id="addFileBtn">Add File</button>
							</div>
							<div class="card-footer fileInput">
							</div>
	               	   </td>
	               </tr>
		        </table>
		        <input type="text" title="로그인 직원 ID" class="notNull" name="eid" value="${loginEmployee.eid}" style="display: none;">
			</div>
		</form>
	</div>
</div>

<script>
	function regist_go() {
		/* 유효성 검사 */
		var form = document.forms.registForm;
	
		var inputNotNull = document.querySelectorAll(".notNull");
		for(var input of inputNotNull){
			if(!input.value){
				alert(input.getAttribute("title")+"은 필수입니다.");
				input.focus();
				return;
			}					
		}
		
		var neutralizationChecked = document.querySelector("input[name='neutralization']:checked");
		if (!neutralizationChecked) {
		    alert("중성화 유무를 선택해주세요.");
		    return;
		}
		
		var genderChecked = document.querySelector("input[name='gender']:checked");
		if (!genderChecked) {
		    alert("성별을 선택해주세요.");
		    return;
		}
		
		var kindChecked = document.querySelector("input[name='kind']:checked");
		if (!kindChecked) {
		    alert("동물의 종류를 선택해주세요.");
		    return;
		}
		
		var inputNotString = document.querySelectorAll(".notString");
		for(var input of inputNotString){
			if (input.value.trim() === "" || isNaN(input.value.trim())) {
			    alert(input.getAttribute("title") + "에는 숫자만 입력해 주세요.");
			    input.focus();
			    return;
			}
		}
		
		let breed = document.querySelector("select[name='breed']").value;
		if(breed == ""){
			alert("동물의 품종을 선택해주세요");
			return;
		}
		
		var inputs = $('input[name="pictureList"]');
		for(var input of inputs){
			if(input.value==""){
				input.disabled=true;
			}
		}
		
		form.action="regist/post";
		form.method="post";
		form.submit();

	}
</script>
<script>
function addFile_go(){
	var dataNum=0;
	if($('input[name="pictureList"]').length >=5){
		alert("파일추가는 5개까지만 가능합니다.");
		return;
	}
	
	let div=$('<div>').addClass("inputRow").attr("data-no",dataNum);
	let input = $('<input>').attr({"type":"file", "name":"pictureList"}).css("display","inline");
	let button = "<button onclick='remove_go("+dataNum+");' style='border:0;outline:0;' class='badge bg-red' type='button'>X</button>";
	
	div.append(input).append(button);
	$('.fileInput').append(div);
	
	dataNum++;
}

function remove_go(num){
	//alert(num);
	$('div[data-no="'+num+'"]').remove();
}

$('.fileInput').on('change',"input[name='pictureList']",function(event){
	//alert("file change");	
	if(this.files[0].size > 1024*1024*40){
		alert("첨부파일크기는 40MB 이하만 가능합니다.");
		this.value="";				
	}
});
</script>
</body>








