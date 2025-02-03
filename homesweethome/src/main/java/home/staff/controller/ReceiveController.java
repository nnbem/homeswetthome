package home.staff.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.josephoconnell.html.HTMLInputFilter;

import home.commons.request.PageMaker;
import home.staff.dto.ReceiveVO;
import home.staff.request.ReceiveModifyRequest;
import home.staff.request.ReceiveRegistRequest;
import home.staff.service.ReceiveService;

@Controller
@RequestMapping("/staff/receive")
public class ReceiveController {

    private final ReceiveService receiveService;

    @Autowired
    public ReceiveController(ReceiveService receiveService) {
        this.receiveService = receiveService;
    }

    
	/* Receive 목록 조회 */
     
    @GetMapping("/receive")
    public String list(@ModelAttribute PageMaker pageMaker, Model model) throws Exception {
    	
    	System.out.println("🔍 searchType: " + pageMaker.getSearchType());
        System.out.println("🔍 keyword: " + pageMaker.getKeyword());
        
        List<ReceiveVO> receiveList = receiveService.list(pageMaker);
        model.addAttribute("receiveList", receiveList);
        return "/staff/receive/receive";
    }

    
	/* Receive 등록 폼 이동 */
     
    @GetMapping("/regist")
    public String registForm() {
        return "/staff/receive/regist";
    }

    
	/* Receive 등록 처리 */
     
    @PostMapping("/regist")
    public String regist(@ModelAttribute ReceiveRegistRequest registRequest, Model model) throws Exception {
        // 입력 데이터 검증
        registRequest.validate();

        // ReceiveVO로 변환 후 데이터 필터링
        ReceiveVO receive = registRequest.toReceiveVO();
        receive.setSpot(HTMLInputFilter.htmlSpecialChars(receive.getSpot()));
        receive.setCantername(HTMLInputFilter.htmlSpecialChars(receive.getCantername()));
        receive.setPicture(HTMLInputFilter.htmlSpecialChars(receive.getPicture()));
        receive.setEid(HTMLInputFilter.htmlSpecialChars(receive.getEid()));

        // 데이터 등록
        receiveService.regist(receive);

        model.addAttribute("message", "등록이 성공적으로 완료되었습니다.");
        return "/staff/receive/regist_success";
        
    }

    
	/* Receive 상세 조회 */
    
    @GetMapping("/detail")
    public String detail(int rcno, Model model) throws Exception {
        ReceiveVO receive = receiveService.getReceive(rcno);
        

        if (receive == null) {
            model.addAttribute("errorMessage", "해당 rcno(" + rcno + ")에 대한 데이터를 찾을 수 없습니다.");
            return "errorPage";
        }

        model.addAttribute("receive", receive);
        return "/staff/receive/detail";
    }

    
	/* Receive 수정 폼 이동 */
    
    @GetMapping("/modify")
    public String editForm(int rcno, Model model) throws Exception {
        ReceiveVO receive = receiveService.getReceive(rcno);

        if (receive == null) {
            model.addAttribute("errorMessage", "해당 rcno(" + rcno + ")에 대한 데이터를 찾을 수 없습니다.");
            return "errorPage";
        }

        // 로그인된 사용자 ID 가져오기
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null && auth.isAuthenticated() && !(auth instanceof AnonymousAuthenticationToken)) {
            String loggedInUserId = auth.getName(); // ID 가져오기
            receive.setEid(loggedInUserId); // ReceiveVO에 설정
        } else {
            receive.setEid("Unknown User"); // 인증되지 않은 경우 기본값 설정
        }

        model.addAttribute("receive", receive);
        return "/staff/receive/modify";
    }


   
	/* Receive 수정 처리 */
    
    @PostMapping("/modify/post")
    public String modify(@ModelAttribute ReceiveModifyRequest modifyRequest, Model model) throws Exception {
        // 입력 데이터 검증
        modifyRequest.validate();

        // ReceiveVO로 변환
        ReceiveVO receive = modifyRequest.toReceiveVO();

        // 기존 데이터를 가져와 수정된 데이터와 병합
        ReceiveVO existingReceive = receiveService.getReceive(receive.getRcno());
        if (existingReceive == null) {
            model.addAttribute("errorMessage", "해당 데이터를 찾을 수 없습니다.");
            return "errorPage";
        }

        // 기존 값 유지
        receive.setSpot(receive.getSpot() == null ? existingReceive.getSpot() : receive.getSpot());
        receive.setCantername(receive.getCantername() == null ? existingReceive.getCantername() : receive.getCantername());
        receive.setRegDate(receive.getRegDate() == null ? existingReceive.getRegDate() : receive.getRegDate());
        receive.setBreed(receive.getBreed() == null ? existingReceive.getBreed() : receive.getBreed());
        receive.setGender(receive.getGender() == null ? existingReceive.getGender() : receive.getGender());
        receive.setKind(receive.getKind() == null ? existingReceive.getKind() : receive.getKind());

        // 데이터 업데이트
        receiveService.update(receive);

        model.addAttribute("message", "수정이 성공적으로 완료되었습니다.");
        return "staff/receive/modify_success";
    }


}
