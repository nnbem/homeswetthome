package home.staff.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import home.commons.request.PageMaker;
import home.staff.dto.ReceiveVO;
import home.staff.request.ReceiveRegistRequest;
import home.staff.service.ReceiveService;



@Controller
@RequestMapping("/staff")
public class ReceiveController {
   
   private ReceiveService receiveService;
   @Autowired
   private ReceiveController(ReceiveService receiveService) {
      this.receiveService = receiveService;
   }
   
  
   
   @GetMapping("/receive/receive")
   public void receive(@ModelAttribute PageMaker pageMaker, Model model) throws Exception{
      List<ReceiveVO> receiveList = receiveService.list(pageMaker);
      model.addAttribute("receiveList", receiveList);
      
   }
   
   @GetMapping("/receive/regist")
	public String receive_regist() {
		String url = "staff/receive/regist";
		return url;
	}
   @PostMapping("/receive/regist/post")
   public String registPost(
       @ModelAttribute ReceiveRegistRequest regRequest,
       @RequestParam("picture") MultipartFile picture,
       HttpSession session) throws Exception {
       String url = "/receive/regist_success";

       // 디버깅 로그
       System.out.println("rcno: " + regRequest.getRcno());
       System.out.println("aid: " + regRequest.getAid());

       // 매핑된 데이터 확인
       if (regRequest.getRcno() == 0 || regRequest.getAid() == 0) {
           throw new IllegalArgumentException("인계번호 또는 보호동물관리번호가 유효하지 않습니다.");
       }

       // 로그인한 사용자 ID 가져오기
       String eid = (String) session.getAttribute("loginEid");
       if (eid == null) {
           throw new RuntimeException("로그인이 필요합니다.");
       }

       // ReceiveVO 변환 및 데이터 설정
       ReceiveVO receive = regRequest.toReceiveVO();
       receive.setEid(eid);

       // 파일 저장 처리
       if (!picture.isEmpty()) {
           String fileName = saveFile(picture);
           receive.setPicture(fileName);
       }

       // DB 저장
       receiveService.regist(receive);

       return url;
   }

   // 파일 저장 메서드
   private String saveFile(MultipartFile file) throws IOException {
       String uploadDir = "/path/to/upload/directory"; // 실제 업로드 경로 설정
       File uploadPath = new File(uploadDir);
       if (!uploadPath.exists()) {
           uploadPath.mkdirs(); // 디렉토리가 없으면 생성
       }
       String fileName = UUID.randomUUID().toString() + "_" + file.getOriginalFilename();
       File targetFile = new File(uploadPath, fileName);
       file.transferTo(targetFile);
       return fileName;
   }






   @GetMapping("/receive/detail")
   public String receive_detail(@RequestParam("rcno") Long rcno, Model model) throws Exception {
       String url = "staff/receive/detail";

       // rcno를 기반으로 데이터 조회
       ReceiveVO receive = receiveService.getReceive(rcno);
       if (receive == null) {
           // 데이터가 없는 경우 처리
           model.addAttribute("errorMessage", "No data found for rcno: " + rcno);
           return "errorPage"; // 에러 페이지로 이동
       }

       // 조회된 데이터를 모델에 추가
       model.addAttribute("receive", receive);

       // 정상적으로 상세 페이지로 이동
       return url;
   }
   
}
