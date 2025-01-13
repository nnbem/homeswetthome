<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/slidebar.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/perfomance_regist.css">
</head>

<div class="content-wrapper">
	<div class="content-title">	
	<h1><b>글 등록하기</b></h1>
</div>
<div class="content-body">

        <div class="post-container">
    <form id="post-form">
        <table class="post-table">
                <td>
                <button type="button" class="submit-btn">등록</button>
            	<button type="submit" class="button" onclick="back_page();">목록</button>
				<button type="submit" class="approval_button" onclick="approval();">승　인</button>
				</td>
            <tr>
                <td class="label">제목</td>
                <td><input type="text" name="title" placeholder="제목을 입력하세요" required></td>
            </tr>
            <tr>
                <td class="label">작성자</td>
                <td><input type="text" name="author" value="asdf" readonly></td>
            </tr>
        </table>
        <div class="content-editor">
            <div class="toolbar">
                <!-- 간단한 에디터 버튼들 -->
                <button type="button" class="tool-btn">B</button>
                <button type="button" class="tool-btn">I</button>
                <button type="button" class="tool-btn">U</button>
                <button type="button" class="tool-btn">이미지 추가</button>
                <!-- 기타 툴 버튼들 추가 가능 -->
            </div>
            <textarea name="content" placeholder="내용을 입력하세요" rows="10"></textarea>
        </div>
        <div class="image-preview">
        </div>
 
            <button type="button" class="back-btn">목록</button>
    </form>
</div>