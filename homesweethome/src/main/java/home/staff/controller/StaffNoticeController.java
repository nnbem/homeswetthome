package home.staff.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import home.commons.request.PageMaker;
import home.staff.dto.NoticeVO;
import home.staff.service.NoticeService;

@Controller
@RequestMapping("/staff")
public class StaffNoticeController {
	
	private NoticeService noticeService;

	@Autowired
	public StaffNoticeController(NoticeService noticeService) {
		this.noticeService = noticeService;
	}
	
	@GetMapping("/board/notice")
    public void notice(@ModelAttribute PageMaker pageMaker, Model model) throws Exception {
        List<NoticeVO> noticeList = noticeService.list(pageMaker);
        model.addAttribute("noticeList", noticeList);
    }
    
    @GetMapping("/board/notice/regist")
    public String notice_regist() {
        return "staff/board/notice/regist";
    }
    
    @GetMapping("/board/notice/detail")
    public String notice_detail() {
        return "staff/board/notice/detail";
    }
}
