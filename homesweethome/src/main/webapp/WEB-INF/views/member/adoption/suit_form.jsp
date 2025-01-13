<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/slidebar.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/suit_form.css">
</head>

<div class="content-wrapper">
	<div class="content-title">	
	<h1><b>적합성점검표</b></h1>
	</div>
<div class="content-body">

<form id="checklist-form">
        <table>
            <thead>
                <tr>
                    <th>항목</th>
                    <th>부적합</th>
                    <th>보통</th>
                    <th>충분함</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>01. 거주 지역 또는 건물의 반려동물 허용 규정을 충분히 이해하고 이를 준수할 준비가 되었습니까?</td>
                    <td class="radio-cell"><input type="radio" name="question1" value="1"></td>
                    <td class="radio-cell"><input type="radio" name="question1" value="2"></td>
                    <td class="radio-cell"><input type="radio" name="question1" value="3"></td>
                </tr>
                <tr>
                    <td>02. 거주 공간에서 반려동물이 위험한 물건에 접근하지 않도록 충분히 안전하게 관리할 수 있습니까?</td>
                    <td class="radio-cell"><input type="radio" name="question2" value="1"></td>
                    <td class="radio-cell"><input type="radio" name="question2" value="2"></td>
                    <td class="radio-cell"><input type="radio" name="question2" value="3"></td>
                </tr>
                <tr>
                    <td>03. 반려동물이 위험한 물건(전선, 날카로운 물건 등)에 접근하지 못하도록 정리할 계획이 있습니까?</td>
                    <td class="radio-cell"><input type="radio" name="question3" value="1"></td>
                    <td class="radio-cell"><input type="radio" name="question3" value="2"></td>
                    <td class="radio-cell"><input type="radio" name="question3" value="3"></td>
                </tr>
                <tr>
                    <td>04. 거주 지역 또는 건물에서 반려동물을 키우는 것이 허용됩니까?</td>
                    <td class="radio-cell"><input type="radio" name="question4" value="1"></td>
                    <td class="radio-cell"><input type="radio" name="question4" value="2"></td>
                    <td class="radio-cell"><input type="radio" name="question4" value="3"></td>
                </tr>
                <tr>
                    <td>05. 반려동물이 활동하거나 휴식할 수 있는 전용 공간을 마련할 준비가 되었습니까?</td>
                    <td class="radio-cell"><input type="radio" name="question5" value="1"></td>
                    <td class="radio-cell"><input type="radio" name="question5" value="2"></td>
                    <td class="radio-cell"><input type="radio" name="question5" value="3"></td>
                </tr>
                <tr>
                    <td>06. 반려동물을 키워본 경험이 있습니까?</td>
                    <td class="radio-cell"><input type="radio" name="question6" value="1"></td>
                    <td class="radio-cell"><input type="radio" name="question6" value="2"></td>
                    <td class="radio-cell"><input type="radio" name="question6" value="3"></td>
                </tr>
                <tr>
                    <td>07. 반려동물의 행동, 건강 관리 등에 대한 기본 지식을 갖추고 있습니까?</td>
                    <td class="radio-cell"><input type="radio" name="question7" value="1"></td>
                    <td class="radio-cell"><input type="radio" name="question7" value="2"></td>
                    <td class="radio-cell"><input type="radio" name="question7" value="3"></td>
                </tr>
                <tr>
                    <td>08. 반려동물이 예상치 못한 행동(짖음, 물건 파손 등)을 보일 경우 적절히 대응할 수 있습니까?</td>
                    <td class="radio-cell"><input type="radio" name="question8" value="1"></td>
                    <td class="radio-cell"><input type="radio" name="question8" value="2"></td>
                    <td class="radio-cell"><input type="radio" name="question8" value="3"></td>
                </tr>
                <tr>
                    <td>09. 반려동물의 건강 관리를 위해 필요한 정보(예방접종, 정기검진 등)를 충분히 숙지하고 있습니까?</td>
                    <td class="radio-cell"><input type="radio" name="question9" value="1"></td>
                    <td class="radio-cell"><input type="radio" name="question9" value="2"></td>
                    <td class="radio-cell"><input type="radio" name="question9" value="3"></td>
                </tr>
                <tr>
                    <td>10. 유기견 입양 후 사회화 훈련(산책, 타인과의 교류 등)을 충분히 수행할 준비가 되었습니까?</td>
                    <td class="radio-cell"><input type="radio" name="question10" value="1"></td>
                    <td class="radio-cell"><input type="radio" name="question10" value="2"></td>
                    <td class="radio-cell"><input type="radio" name="question10" value="3"></td>
                </tr>
                <tr>
                    <td>11. 가족 구성원 모두가 반려동물 입양에 동의합니까?</td>
                    <td class="radio-cell"><input type="radio" name="question11" value="1"></td>
                    <td class="radio-cell"><input type="radio" name="question11" value="2"></td>
                    <td class="radio-cell"><input type="radio" name="question11" value="3"></td>
                </tr>
                <tr>
                    <td>12. 가족 중 반려동물에 대한 알레르기나 반대 의견이 있을 경우 이를 해결할 자신이 있습니까?</td>
                    <td class="radio-cell"><input type="radio" name="question12" value="1"></td>
                    <td class="radio-cell"><input type="radio" name="question12" value="2"></td>
                    <td class="radio-cell"><input type="radio" name="question12" value="3"></td>
                </tr>
                <tr>
                    <td>13. 반려동물 입양으로 인한 생활 방식 변화에 충분히 적응할 수 있습니까?</td>
                    <td class="radio-cell"><input type="radio" name="question13" value="1"></td>
                    <td class="radio-cell"><input type="radio" name="question13" value="2"></td>
                    <td class="radio-cell"><input type="radio" name="question13" value="3"></td>
                </tr>
                <tr>
                    <td>14. 반려동물의 입양과 함께 가족의 생활 방식 변화(일정 조정, 공간 활용 등)에 적응할 준비가 되었습니까?</td>
                    <td class="radio-cell"><input type="radio" name="question14" value="1"></td>
                    <td class="radio-cell"><input type="radio" name="question14" value="2"></td>
                    <td class="radio-cell"><input type="radio" name="question14" value="3"></td>
                </tr>
                <tr>
                    <td>15. 예상치 못한 의료비(응급치료, 질병 치료 등) 지출을 감당할 준비가 되었습니까?</td>
                    <td class="radio-cell"><input type="radio" name="question15" value="1"></td>
                    <td class="radio-cell"><input type="radio" name="question15" value="2"></td>
                    <td class="radio-cell"><input type="radio" name="question15" value="3"></td>
                </tr>
                <tr>
                    <td>16. 반려동물의 식사, 장난감, 용품 등 기본적인 생활비를 충분히 마련할 수 있습니까?</td>
                    <td class="radio-cell"><input type="radio" name="question16" value="1"></td>
                    <td class="radio-cell"><input type="radio" name="question16" value="2"></td>
                    <td class="radio-cell"><input type="radio" name="question16" value="3"></td>
                </tr>
                <tr>
                    <td>17. 반려동물의 건강 유지(영양제, 보험 등)를 위해 추가적인 지출을 감수할 수 있습니까?</td>
                    <td class="radio-cell"><input type="radio" name="question17" value="1"></td>
                    <td class="radio-cell"><input type="radio" name="question17" value="2"></td>
                    <td class="radio-cell"><input type="radio" name="question17" value="3"></td>
                </tr>
                <tr>
                    <td>18. 입양 후 예상되는 장기적인 경제적 부담(10년 이상)을 이해하고 준비하고 있습니까?</td>
                    <td class="radio-cell"><input type="radio" name="question18" value="1"></td>
                    <td class="radio-cell"><input type="radio" name="question18" value="2"></td>
                    <td class="radio-cell"><input type="radio" name="question18" value="3"></td>
                </tr>
                <tr>
                    <td>19. 반려동물이 문제 행동을 보일 때, 이를 침착하게 관리하고 대처할 준비가 되었습니까?</td>
                    <td class="radio-cell"><input type="radio" name="question19" value="1"></td>
                    <td class="radio-cell"><input type="radio" name="question19" value="2"></td>
                    <td class="radio-cell"><input type="radio" name="question19" value="3"></td>
                </tr>
                <tr>
                    <td>20. 반려동물과 신뢰 관계를 형성하며 꾸준히 노력할 준비가 되었습니까?</td>
                    <td class="radio-cell"><input type="radio" name="question20" value="1"></td>
                    <td class="radio-cell"><input type="radio" name="question20" value="2"></td>
                    <td class="radio-cell"><input type="radio" name="question20" value="3"></td>
                </tr>
            </tbody>
        </table>
			<div class="file-section">
                <p>파일첨부 (온라인교육 이수증과 주거환경사진을 첨부해주세요)</p>
                <div id="file-inputs-container" class="file-inputs-container">
                    <div class="file-input-row">
                        <input type="file" name="file1" accept=".jpg, .jpeg, .png">
                        <button type="button" id="add-file-button" class="add-file-button">+</button>
                    </div>
                </div>
            </div>

            <button type="submit" class="submit_button">제출하기 →</button>
<script>
const fileInputsContainer = document.getElementById("file-inputs-container");
const addFileButton = document.getElementById("add-file-button");
let fileCount = 1; // 현재 파일 첨부 개수
const maxFiles = 10; // 최대 파일 첨부 개수

// 파일 추가 버튼 클릭 이벤트
addFileButton.onclick = function () {
    if (fileCount >= maxFiles) {
        alert(`최대 ${maxFiles}개의 파일만 첨부할 수 있습니다.`);
        return;
    }

    fileCount++; // 파일 첨부 개수 증가

    // 새 파일 입력 행 생성
    const fileInputRow = document.createElement("div");
    fileInputRow.classList.add("file-input-row");

    const newFileInput = document.createElement("input");
    newFileInput.type = "file";
    newFileInput.name = `file${fileCount}`;
    newFileInput.accept = ".jpg, .jpeg, .png";

    const removeButton = document.createElement("button");
    removeButton.type = "button";
    removeButton.classList.add("remove-file-button");
    removeButton.textContent = "−";

    // 제거 버튼 클릭 이벤트
    removeButton.onclick = function () {
        fileInputsContainer.removeChild(fileInputRow);
        fileCount--; // 파일 첨부 개수 감소
    };

    fileInputRow.appendChild(newFileInput);
    fileInputRow.appendChild(removeButton);
    fileInputsContainer.appendChild(fileInputRow);
};

// 폼 제출 이벤트
document.getElementById("checklist-form").onsubmit = function (event) {
    event.preventDefault();

    // 파일 첨부 확인
    const fileInputs = document.querySelectorAll('input[type="file"]');
    let totalFiles = 0;

    // 각 파일 입력 필드의 파일 개수를 계산
    fileInputs.forEach((input) => {
        totalFiles += input.files.length;
    });

    if (totalFiles < 3) { // 최소 3개 파일 필요
        alert("최소 3장의 파일을 첨부해주세요.");
        fileInputs[0].scrollIntoView({ behavior: "smooth", block: "center" });
        fileInputs[0].focus();
        return;
    }

    // 파일 형식 확인
    let invalidFiles = [];
    fileInputs.forEach((input) => {
        const allowedTypes = ["image/jpeg", "image/png", "image/jpg"];
        const files = Array.from(input.files);
        invalidFiles = invalidFiles.concat(files.filter(file => !allowedTypes.includes(file.type)));
    });

    if (invalidFiles.length > 0) {
        alert("이미지 파일(jpg, jpeg, png)만 첨부 가능합니다.");
        fileInputs[0].scrollIntoView({ behavior: "smooth", block: "center" });
        fileInputs[0].focus();
        return;
    }

    // 성공 메시지 및 페이지 이동
    alert("검진표가 성공적으로 제출되었습니다.");
    window.location.href = "/member/adoption/suit";
};
</script>