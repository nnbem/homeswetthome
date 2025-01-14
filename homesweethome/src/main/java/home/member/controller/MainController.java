package home.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import home.commons.service.MenuMemberService;
import home.member.dto.MenuMemberVO;

@Controller
@RequestMapping("/member")
public class MainController {
	
	@Autowired
	private MenuMemberService menuMemberService;
	
	@GetMapping("/main/guest")
	public String guest(String mcode, Model model) throws Exception {
		String url = "/member/guest_main";
		
		return url;
	}
	@GetMapping("/main")
	public String main(String mcode, Model model) throws Exception {
		String url = "/member/main";
		
		List<MenuMemberVO> menuMemberList = menuMemberService.getMainMenuMemberList();
		
		if(mcode != null) {
			MenuMemberVO menu = menuMemberService.getMenuMemberByMcode(mcode);
			model.addAttribute("menu", menu);
		}
		
		model.addAttribute("menuMemberList", menuMemberList);
		
		return url;
	}
	
	@GetMapping("/content")
	public String content() {
		String url="/member/main/content";
		return url;
	}
	
	@GetMapping("/main/iframe")
	public String iframe() {
		String url="/member/main/Main";
		return url;
	}
}
