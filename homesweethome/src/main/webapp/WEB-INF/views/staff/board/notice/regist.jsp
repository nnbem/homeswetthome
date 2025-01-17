<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_member.css">
<!-- summernote -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.min.css">
<!-- summernote -->
<link rel="stylesheet" href="/resources/bootstrap/plugins/summernote/summernote-bs4.min.css">
</head>

<body>
	<!-- Main Content -->
	<div class="content">
		<div class="search-container">
			<h2>공지사항</h2>
			<hr/>

			
			<br />
			<div class="st-list-button-container">
				<button type="submit" class="button">목록</button>
			</div>
		</div>
	</div>
	
<script>

function regist_go(){
	var form = document.forms.registForm;
	
	var inputNotNull = document.querySelectorAll(".notNull");
	for(var input of inputNotNull){
		if(!input.value){
			alert(input.getAttribute("title")+"은 필수입니다.");
			input.focus();
			return;
		}
	}	
	
	form.action="regist";
	form.method="post";
	form.submit();
}

Summernote_go($("textarea#content"),"<%=request.getContextPath() %>") ;
</script>