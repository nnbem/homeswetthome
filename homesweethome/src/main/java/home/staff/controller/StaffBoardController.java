package home.staff.controller;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.josephoconnell.html.HTMLInputFilter;

import home.commons.request.PageMaker;
import home.staff.dto.NoticeVO;
import home.staff.request.NoticeModifyRequest;
import home.staff.request.NoticeRegistRequest;
import home.staff.service.NoticeService;

@Controller
@RequestMapping("/staff")
public class StaffBoardController {
	
	private NoticeService noticeService;

	@Autowired
	public StaffBoardController(NoticeService noticeService) {
		this.noticeService = noticeService;
	}
	
	//공지먼저정렬 (수정)
	@GetMapping("/board/notice")
    public String notice(@ModelAttribute PageMaker pageMaker, Model model) throws Exception {
        List<NoticeVO> noticeList = noticeService.selectNoticeListWithPriority(pageMaker);
        
        model.addAttribute("noticeList", noticeList);
        return "/staff/board/notice";
    }
	
	@PostMapping("/board/notice")
	public String notice() {
		return "/staff/board/notice";
	}
	
	//pin기능 추가
    @PostMapping("/board/notice/{nno}/setNotice")
    public ResponseEntity<String> setNotice(@PathVariable int nno, @RequestParam boolean isNotice) {
    	try {
    		noticeService.updateNoticeStatus(nno, isNotice);
    		return ResponseEntity.ok(isNotice ? "공지로 등록되었습니다." : "공지가 해제되었습니다.");
    	} catch (SQLException e) {
    		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("오류가 발생하였습니다.");
    	}
    }
    
    @GetMapping("/board/notice/regist")
    public String registForm() {
    	return "/staff/board/notice/regist";
    }

    //공지등록
    @PostMapping("/board/notice/regist")
    public String registPost(@ModelAttribute NoticeRegistRequest regRequest, @RequestParam(value = "pin", required = false, defaultValue = "0") int pin, HttpSession session) throws Exception {
    	String url = "/staff/board/notice/regist_success";
    	
    	String loginUser = (String) session.getAttribute("loginUser");
    	if(loginUser == null) {
    		return "redirect:/staff/login";
    	}
    	
    	NoticeVO notice = regRequest.toNotice();
    	notice.setTitle(HTMLInputFilter.htmlSpecialChars(notice.getTitle()));
    	
    	// 공지 여부 저장
        notice.setPin(pin);
    	
    	noticeService.regist(notice);
    	
    	return url;
    }
    
    @GetMapping("/board/notice/detail")
    public String notice_detail(int nno, Model model, RedirectAttributes redirectAttributes) throws Exception {
        String url = "staff/board/notice/detail";
        
        NoticeVO notice = noticeService.getnotice(nno);
        if (notice == null) {
            // 데이터가 없는 경우 처리
            model.addAttribute("errorMessage", "No data found for nno: " + nno);
            return "/error/500"; // 에러 페이지로 이동
        }

        model.addAttribute("notice", notice);
        
        redirectAttributes.addFlashAttribute("nno", notice.getNno());

        // 정상적으로 상세 페이지로 이동
        return url;
    }
    
    @GetMapping("/board/notice/modify")
	public void modifyGet(int nno, Model model) throws Exception {
		NoticeVO notice = noticeService.getnotice(nno);
		model.addAttribute("notice", notice);
	}
	
	@PostMapping("/board/notice/modify")
	public String modifyPost(NoticeModifyRequest modifyRequest, Model model) throws Exception {
	    String url = "/staff/board/notice/modify_success";

	    NoticeVO notice = modifyRequest.toNoticeVO();
	    notice.setNno(modifyRequest.getNno());
	    
	    // System.out.println("수정된 글번호: " + modifyRequest.getNno());
	    
	    notice.setTitle(HTMLInputFilter.htmlSpecialChars(notice.getTitle()));
	    noticeService.modify(notice);

	    // nno 값을 Model에 추가
	    model.addAttribute("nno", notice.getNno());
	    return url;
	}
	
	@Resource(name="summernotePath")
	private String summernotePath;
	
	@GetMapping("/board/notice/remove")
	public String remove(@RequestParam("nno") int nno, RedirectAttributes rttr) throws Exception {
	    noticeService.remove(nno);
	    rttr.addFlashAttribute("message", "공지사항이 삭제되었습니다.");
	    return "redirect:/staff/board/notice";
	}
	
	@GetMapping("/board/report")
    public String report() {
        return "staff/board/report";
    }
    
    @GetMapping("/board/report/detail")
    public String report_detail() {
        return "staff/board/report/detail";
    }
    
    @GetMapping("/board/review")
    public String review() {
        return "staff/board/review";
    }
    
    @GetMapping("/board/review/detail")
    public String review_detail() {
        return "staff/board/review/detail";
    }
    @GetMapping("/board/review/complete")
	public String review_complete() {
		return "staff/board/review/complete";
	}
    
    
    @GetMapping("/board/inquiry")
    public String inquiry() {
        return "staff/board/inquiry";
    }
    
    @GetMapping("/board/inquiry/detail")
    public String inquiry_detail() {
        return "staff/board/inquiry/detail";
    }
    @GetMapping("/board/inquiry/complete")
	public String inquiry_complete() {
		return "staff/board/inquiry/complete";
	}
}
