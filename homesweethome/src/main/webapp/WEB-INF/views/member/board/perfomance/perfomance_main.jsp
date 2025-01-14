<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/slidebar.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/perfomance.css">
</head>

<div class="content-wrapper">
	<div class="content-title">	
	<h1><b>뽐내기</b></h1>
</div>

	<div class="content-body">
			<div class="search-bar">
				<div class="left">
					<button id="regist" class="regist-btn" onclick="open_regist();">등 록</button>
				</div>
				<div class="right">
					<button class="refresh-button">⟳&nbsp;&nbsp;</button>
					<select class="sort-select">
						<option value="">정렬개수</option>
						<option value="all">전체</option>
					</select> <select class="sort-select">
						<option value="">전체</option>
						<option value="specific">특정</option>
					</select> <input type="text" class="search-input" placeholder="검색어를 입력해주세요.">
					<button class="search-button">검색</button>
				</div>
			</div>
	
			<table class="main-table">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자ID</th>
						<th>등록날짜</th>
						<th>좋아요</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>27</td>
						<td><a href="/member/board/perfomance/detail">내새꾸잘한다</a></td>
						<td>asdf77</td>
						<td>2024-12-24</td>
						<td>10</td>
						<td>22</td>
					</tr>
					<tr>
						<td>26</td>
						<td><a href="/member/board/perfomance/detail">이게바로천재견아닙니까</a></td>
						<td>asdf77</td>
						<td>2024-12-24</td>
						<td>10</td>
						<td>22</td>
					</tr>
					<tr>
						<td>25</td>
						<td><a href="/member/board/perfomance/detail">기다려하면기다리지못하는</a></td>
						<td>asdf77</td>
						<td>2024-12-24</td>
						<td>10</td>
						<td>22</td>
					</tr>
					<tr>
						<td>24</td>
						<td><a href="/member/board/perfomance/detail">수속성고앵이</a></td>
						<td>asdf77</td>
						<td>2024-12-24</td>
						<td>10</td>
						<td>22</td>
					</tr>
					<tr>
						<td>23</td>
						<td><a href="/member/board/perfomance/detail">돌돌이가져오세요!!</a></td>
						<td>asdf77</td>
						<td>2024-12-24</td>
						<td>10</td>
						<td>22</td>
					</tr>
	
				</tbody>
			</table>
		</div>
</div>
			
			
<script>
function open_regist() {
    // 이동할 페이지 URL 설정
    window.location.href = "/member/board/perfomance/regist"; // 여기에 이동할 페이지 경로를 넣으세요.
}
</script>