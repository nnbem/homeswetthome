package home.member.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import home.commons.request.PageMaker;
import home.staff.dto.NoticeVO;
import home.staff.service.NoticeService;

@Controller
@RequestMapping("/member")
public class MemberNoticeController {

	private NoticeService noticeService;

	@Autowired
	public MemberNoticeController(NoticeService noticeService) {
		this.noticeService = noticeService;
	}
	
	//공지먼저정렬(수정)
	@GetMapping("/intro/notice")
    public String notice(@ModelAttribute PageMaker pageMaker, Model model) throws Exception {
        List<NoticeVO> noticeList = noticeService.selectNoticeListWithPriority(pageMaker);
        
        model.addAttribute("noticeList", noticeList);
        return "/member/intro/notice";
    }
	
	@GetMapping("/intro/notice/detail")
    public String notice_detail(@RequestParam("nno") int nno, Model model) throws Exception {
        String url = "member/intro/notice/detail";

        NoticeVO notice = noticeService.getnotice(nno);
        if (notice == null) {
            // 데이터가 없는 경우 처리
            model.addAttribute("errorMessage", "No data found for nno: " + nno);
            return "/error/500"; // 에러 페이지로 이동
        }

        // 조회된 데이터를 모델에 추가
        model.addAttribute("notice", notice);

        // 정상적으로 상세 페이지로 이동
        return url;
    }
}
