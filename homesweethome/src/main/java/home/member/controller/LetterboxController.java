package home.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class LetterboxController {
	
	@GetMapping("/letterbox")
	public String letterbox() {
		String url = "/member/letterbox/letterbox";
		return url;
	}
	
	@GetMapping("/letterbox/important")
	public String letterboxImportant() {
		String url = "/member/letterbox/important";
		return url;
	}
	
}
