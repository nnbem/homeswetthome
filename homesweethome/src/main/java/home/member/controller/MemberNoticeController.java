package home.member.controller;

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
@RequestMapping("/member")
public class MemberNoticeController {

	private NoticeService noticeService;

	@Autowired
	public MemberNoticeController(NoticeService noticeService) {
		this.noticeService = noticeService;
	}
	
	@GetMapping("/intro/notice")
    public void notice(@ModelAttribute PageMaker pageMaker, Model model) throws Exception {
        List<NoticeVO> noticeList = noticeService.list(pageMaker);
        model.addAttribute("noticeList", noticeList);
    }
}
