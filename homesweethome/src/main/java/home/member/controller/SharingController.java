package home.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import home.commons.request.PageMaker;
import home.member.dto.SharingVO;
import home.member.service.SharingService;

@Controller
@RequestMapping("/member")
public class SharingController {

	private SharingService sharingService;

	@Autowired
	public SharingController(SharingService sharingService) {
		this.sharingService = sharingService;
	}
	
	
	@GetMapping("/board/sharing")
    public void sharing(@ModelAttribute PageMaker pageMaker, Model model) throws Exception {
        List<SharingVO> sharingList = sharingService.list(pageMaker);
        model.addAttribute("sharingList", sharingList);
    }
    
    @GetMapping("/board/sharing/regist")
    public String shaing_regist() {
        return "member/board/sharing/regist";
    }
    
    @GetMapping("/board/sharing/detail")
    public String sharing_detail() {
    	return "member/board/sharing/detail";
    }
	
}
