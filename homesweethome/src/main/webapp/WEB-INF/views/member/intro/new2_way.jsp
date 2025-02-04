<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member_style/way.css">
</head>

<!-- 본문 -->
<section>
    <div class="content-title">
      <h1><b style="font-size: 40px;">오시는 길</b></h1>
      <div class="find_way">
        <!-- 새 창으로 열기-->
        <button type="button" id="way-btn" onclick="find_way();">길찾기</button>
      </div>
    </div>
    <div class="content-body">
      <img src="<%=request.getContextPath()%>/resources/image/k/intro_1.jpg" style="display: block; width: 60%; height: auto;">

      <table>
        <tbody>
          <tr>
            <td>● 전화번호</td>
            <td>042-270-7239</td>
          </tr>
          <tr>
            <td>● 대중교통-버스</td>
            <td>금고2동: 73번, 75번, 691번</td>
          </tr>
          <tr>
            <td>● 주차장현황</td>
            <td>제1주차장(74대), 제2주차장(19대)</td>
          </tr>
        </tbody>
      </table>
    </div>
    
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
    
</section>

<script>
  function find_way() {
    const url = `https://map.kakao.com/?map_type=TYPE_MAP&target=car&rt=%2C%2C585838%2C822561&rt1=&rt2=%EB%8C%80%EC%A0%84%EB%8F%99%EB%AC%BC%EB%B3%B4%ED%98%B8%EC%84%BC%ED%84%B0&rtIds=%2C&rtTypes=%2C`;

    try {
      const newWindow = window.open(url, '_blank');
      if (!newWindow || newWindow.closed || typeof newWindow.closed === 'undefined') {
        alert('팝업이 차단되었습니다. 팝업 차단 설정을 확인해주세요.');
      }
    } catch (e) {
      console.error('팝업을 열 수 없습니다:', e);
    }
  }
</script>
