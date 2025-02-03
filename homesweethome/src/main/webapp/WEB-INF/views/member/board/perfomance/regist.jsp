<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>

<!-- iCheck -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css?v=3.2.0" />
<!-- Theme style -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/summernote/summernote-bs4.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_member.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member_style/regist.css">

<!-- jQuery -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/dist/js/adminlte.min.js?v=3.2.0"></script>

<!-- Summernote -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.min.js"></script>

<script src="<%=request.getContextPath()%>/resources/js/home.js" ></script>

<style>
	.note-editor{
		width:98%;
	}

</style>

</head>

<section class="reg-body">

	<div class="content-reg-title">
		<h4 style="margin-right:-182%;">
			<b>뽐내기</b>
		</h4>
		<div class="reg-bar" >
				<div class="st-list-button-container" >
					<button type="button" class="button" onclick="regist_go();">등록</button>
				</div>
			</div>
	</div>
	<div class="content-reg-body">
		<form enctype="multipart/form-data" role="form" method="post" action="regist" name="regist" id="registForm">
			
			<div class="content-body">
				<table class="detail-table">
						<!-- 제목 -->
						<thead>
							<tr>
								<td><label for="title">제목</label> <input type="text" id="title" name="title" class="form-control notNull"
									title="제목" placeholder="제목을 입력해주세요.">
								</td>
							</tr>
						</thead>
						<!-- 작성자 -->
						<tbody>
							<tr>
								<td><label for="mid">작성자</label> <input type="text" id="mid" name="mid" class="form-control"
									readonly value="${loginUser}">
								</td>
							</tr>
						<!-- 내용 -->
							<tr>
								<td>
								    <label for="content">내 용</label> 
								    <textarea id="content" name="content" rows="20" cols="90" class="textarea notNull"
								    title="내용" placeholder="1000자 내외로 작성하세요."></textarea>
								</td>

							</tr>
						</tbody>
				</table>
				<br />
				<div class="st-list-button-container" style="margin-left:3%;" >
					<button type="button" class="button" onclick="back_list();">목록</button>
				</div>
			</div>
		</form>
	</div>
</section>

<script>
Summernote_go($("textarea#content"),"<%=request.getContextPath()%> ");

function regist_go(){
	//alert("click regist");
	var form = document.regist;
	
	var inputNotNull = document.querySelectorAll(".notNull");
	for(var input of inputNotNull){
		if(!input.value){
			alert(input.getAttribute("title")+"은 필수입니다.");
			input.focus();
			return;
		}
	}
	
	form.submit();
}

</script>