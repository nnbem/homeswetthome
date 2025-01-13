<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/board_detail.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/common.css">
</head>

<div class="content-wrapper">
	<div class="content-title">
		<h1>
			<b>정보공유-상세</b>
		</h1>
	</div>

			<table class="detail-table">
				<thead>
					<tr>
						<th>내새꾸잘한다
							<div class="st-button-container">
								<button type="submit" class="button">수정<!-- summernote구현 --></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<button type="submit" class="button" onclick="delete_go();">삭제</button>
							</div>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>등록일: 2024-12-24</td>
					</tr>
					<tr>
						<td class="td_text" style="padding: 10%; font-size: 20px;">
							여러가지 개인기 할 수 있는 우리 새꾸<br/>
							너무 귀엽고 천재견아니겠습니까!!!<br/>
							걷기만 해도 귀여움이 철철ㅠㅠ<br/>
							꼬물꼬물 너무 귀여워서 온세상에 자랑하고 싶은 제 새꾸입니다(하튜)<br/>
						</td>
					</tr>
				</tbody>
			</table>
			<br />
			<div class="st-list-button-container">
				<button type="submit" class="button">목록</button>
			</div>
		</div>
	</div>

	<script>
		function delete_go() {
			if (confirm("정말로 삭제하시겠습니까?")) {
				// "확인"을 눌렀을 때 실행할 코드
				alert("삭제가 완료되었습니다.");
			} else {
				// "취소"를 눌렀을 때 실행할 코드
				alert("글을 삭제하지 않습니다.");
			}
		}
	</script>