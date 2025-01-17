<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/staff_member.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/common.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/slidebar.css">
</head>

<!-- 본문 -->

	<div class="content-title">
		<h1>
			<b>정보공유</b>
		</h1>
	</div>

			<table class="detail-table">
				<thead>
					<tr>
						<th>대전 점선면
							<div class="st-button-container" style="width: 86.4%;">
								<button type="submit" class="button">수정<!-- summernote구현 --></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<button type="submit" class="button" onclick="delete_go();">삭제</button>
							</div>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="font-family: NanumSquare_ac;">등록일: 2024-09-21</td>
					</tr>
					<tr>
						<td style="padding: 10%; font-size: 20px; font-family: NanumSquare_ac;">
							대전에 유일하게 한화이글스파크와 대전시내가 한 눈에 보이는 뷰가 있는 곳이 있다고 해서 우리 애기랑 같이 다녀왔어요!🐶💖<br/>
							총 4층으로 200평 대형카페로 구성되어 있고, 1층은 주문공간, 2층은 내부 통창으로 단체석과 분리된 공간,<br/>
							2층야외가 바로 강아지와 같이 있을 수 있는 공간이에요@!!<br/>
							3층도 강아지랑 같이 있을 수 있는데 벽돌로 인테리어를 줘서 포근한 느낌이 있었어요~ <br/>
							4층은 루프탑인데 여기도 강아지도 이용할 수 있다고 했어요!<br/>
							*2층 내부 제외하고 모두 강아지와 함께 있을 수 있는 공간이니 꼭 가보세요~~💎<br/><br/>
							▶주소: 대전 중구 부용로 44 1층<br/>
							▶영업시간: 매일 11:00 ~ 23:00
						</td>
					</tr>
				</tbody>
			</table>
			<br />
			<div class="st-list-button-container">
				<button type="button" class="button" onclick="back_list();">목록</button>
			</div>


	<script>
		function delete_go() {
			if (confirm("정말로 삭제하시겠습니까?")) {
				// "확인"을 눌렀을 때 실행할 코드
				alert("삭제가 완료되었습니다.");
				location.href="<%=request.getContextPath()%>/member/board/sharing";
			} else {
				// "취소"를 눌렀을 때 실행할 코드
				alert("글을 삭제하지 않습니다.");
				location.href="<%=request.getContextPath()%>/member/board/sharing/detail";
			}
			
		}
		
		function back_list() {
			location.href="<%=request.getContextPath()%>/member/board/sharing";
		}
	</script>