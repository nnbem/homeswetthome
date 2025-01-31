<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<head>

<!-- iCheck -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/dist/css/adminlte.min.css?v=3.2.0" />
<!-- Theme style -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/staff_style/staff_member.css">
  

<!-- jQuery -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/dist/js/adminlte.min.js?v=3.2.0"></script>

<!-- Summernote -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.min.js"></script>

<script src="<%=request.getContextPath()%>/resources/js/home.js" ></script>

</head>

<div class="innerWrapper">
<div class="content">

	<div class="content-title">
		<h1>
			<b>공지사항</b>
		</h1>
		<div class="regist-bar" style="width: 83%;" >
				<div class="st-list-button-container" >
					<button type="button" class="button" onclick="modify_go();">수정</button> &nbsp;&nbsp;&nbsp;&nbsp;
					<button type="button" class="button" onclick="back_list();">취소</button>
				</div>
			</div>
	</div>
	<div class="content-body">
		<form enctype="multipart/form-data" role="form" method="post" action="modify" name="modify" id="modifyForm" onsubmit="return false;">
			<input type="hidden" name="nno" value="${notice.nno}">
			<div class="content-body">
				<table class="detail-table">
						<!-- 제목 -->
						<thead>
							<tr>
								<td><label for="title">제목</label> <input type="text" id="title" name="title" class="form-control notNull"
									title="제목" placeholder="제목을 입력해주세요." value="${notice.title }">
								</td>
							</tr>
						</thead>
						<!-- 작성자 -->
						<tbody>
							<tr>
								<td><label for="eid">작성자</label> <input type="text" id="eid" name="eid" class="form-control"
									readonly value="${notice.eid}">
								</td>
							</tr>
						<!-- 내용 -->
							<tr>
								<td>
								    <label for="content">내 용</label> 
								    <textarea id="content" name="content" rows="20" cols="90" class="textarea notNull"
								    title="내용" placeholder="1000자 내외로 작성하세요." >${fn:escapeXml(notice.content) }</textarea>
								</td>

							</tr>
						</tbody>
				</table>
				<br />

			</div>
		</form>
	</div>
</div>
</div>

<script>
Summernote_go($("textarea#content"),"<%=request.getContextPath()%> ");

function modify_go() {
	var form = document.modify;
	
	var inputNotNull = document.querySelectorAll(".notNull");
	for(var input of inputNotNull) {
		if(!input.value) {
			alert(input.getAttibute("title")+"은 필수입니다.");
			input.focus();
			return;
		}
	}
	form.submit();
}

function back_list() {
	location.href="<%=request.getContextPath()%>/staff/board/notice";
}

</script>