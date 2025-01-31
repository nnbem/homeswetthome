<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HomeSweetHome</title>

<style>
/* 이미지 스타일 */
img.detail_image {
    width: 100px;
    height: 100px;
    object-fit: cover; /* 이미지 비율 유지하며 셀 크기에 맞춤 */
    cursor: pointer;
    display: block;
    margin: auto;
}

/* 테이블 스타일 */
.table {
    width: 90%;
    border-collapse: collapse;
    margin: 50px auto;
    table-layout: fixed; /* 셀 크기 고정 */
}

.table th, .table td {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: center;
    font-family: NanumSquare_ac;
    font-size: 14px;
    word-wrap: break-word; /* 텍스트 줄바꿈 */
}

.table th {
    background-color: #f4f4f4;
    font-weight: bold;
}

.table td {
    color: #666;
}

.table td, .table th {
    vertical-align: middle;
}

/* 각 셀 간격 조정 */
.table .image-cell {
    width: 25%; /* 각 이미지 셀의 동일한 넓이 설정 */
}
</style>

</head>
<body>
    <h1>
        <b>입양동물정보 상세보기</b>
    </h1>
    <hr />
    <div class="content-body">
        <div class="table card-body table-responsive p-0">
            <table class="table" id="basic">
                <!-- 첫 번째 행: 이미지 -->
                <tr>
                    <td class="image-cell"><img src="<%=request.getContextPath()%>/resources/image/cat_2.png"
                             alt="동물 이미지" class="detail_image"></td>
                    <td class="image-cell"><img src="<%=request.getContextPath()%>/resources/image/cat_2.png"
                             alt="동물 이미지" class="detail_image"></td>
                    <td class="image-cell"><img src="<%=request.getContextPath()%>/resources/image/cat_2.png"
                             alt="동물 이미지" class="detail_image"></td>
                    <td class="image-cell"><img src="<%=request.getContextPath()%>/resources/image/cat_2.png"
                             alt="동물 이미지" class="detail_image"></td>
                </tr>
                <!-- 두 번째 행: 추가 정보 -->
                <tr>
                    <th>몸무게</th>
                    <td>2.2</td>
                    <th>사료종류</th>
                    <td>낭냥유기농</td>
                </tr>
                <tr>
                    <th>병명</th>
                    <td>피부병</td>
                    <th>진료기록 날짜</th>
                    <td>2025-01-03</td>
                </tr>
                <!-- 마지막 행: 예후 조건 -->
                <tr>
                    <th colspan="2">예후조건</th>
                    <td colspan="2">한 달에 한 번씩 센터 방문하여 경과 지켜봐야 함</td>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>
