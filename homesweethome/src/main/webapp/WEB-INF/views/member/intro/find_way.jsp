<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member_style/way.css">
</head>

<!-- 본문 -->
<section>
    <div class="content-title">
      <h1><b>오시는 길</b></h1>
      <!-- "이전으로" 링크 -->
      <a href="javascript:void(0);" class="back-link" onclick="goPage('/member/intro/way')">← 이전으로</a>
    </div>
    <!-- 지도 -->
    <div class="map">
      <iframe
        src="https://map.kakao.com/link/to/대전동물보호센터,36.4588151,127.383038"
        width="100%" height="600px" frameborder="0" allowfullscreen>
      </iframe>
    </div>

	<br/>
	<br/>
	<br/>
	<br/>
	<br/>

</section>

<script>
  function goPage(url) {
    location.href = url;
  }
</script>