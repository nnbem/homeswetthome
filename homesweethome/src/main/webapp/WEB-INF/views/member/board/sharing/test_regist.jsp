<!-- 찐 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
	<!-- Summernote -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.min.css">
	<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<section>
    <div class="content-title">
        <h1><b>정보공유</b></h1>
    </div>
    <div class="content-body">
        <div class="card-header">
            <h3 class="card-title p-1">글등록</h3>
            <div class="card-tools">
                <button type="button" class="btn btn-primary" id="regist" onclick="regist_go();">등 록</button>
                <button type="button" class="btn btn-warning" id="cancelBtn" onclick="window.close();">취 소</button>
            </div>
        </div>
        <div class="card-body pad">
            <form role="form" method="post" action="/member/board/sharing/regist" name="registForm">
			    <!-- 제목 -->
			    <div class="form-group">
			        <label for="title">제 목</label>
			        <input type="text" id="title" name="title" class="form-control" placeholder="제목을 쓰세요" title="제목">
			    </div>
			
			    <!-- 작성자 -->
			    <div class="form-group">
			        <label for="mid">작성자</label>
			        <input type="text" id="mid" name="mid" class="form-control" readonly value="${loginUser.mid}" title="작성자">
			    </div>
			
			    <!-- 내용 -->
			    <div class="form-group">
			        <label for="content">내 용</label>
			        <textarea name="content" id="content" rows="20" cols="90" class="textarea"></textarea>
			    </div>
			</form>
        </div>
    </div>
</section>

<script>
$(document).ready(function() {
    // Summernote 초기화
    $('#content').summernote({
        height: 300,
        placeholder: '내용을 입력하세요',
    });
});

function regist_go() {
    var inputNotNull = document.querySelectorAll(".notNull");
    for (var input of inputNotNull) {
        if (!input.value.trim()) {
            alert(input.getAttribute("title") + "은 필수입니다.");
            input.focus();
            return;
        }
    }

    var content = $('#content').summernote('code');
    if (content.trim() === '' || content === '<p><br></p>') {
        alert("내용은 필수입니다.");
        return;
    }

    document.getElementById("content").value = content;

    var form = document.registForm;
    form.action = "/member/board/sharing/regist";
    form.submit();
}


</script>
