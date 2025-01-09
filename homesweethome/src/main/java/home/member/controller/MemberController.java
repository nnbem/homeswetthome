package home.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {


	@GetMapping("/main")
	public String main() {
		String url = "/member/main";
		return url;
	}
	
	@GetMapping("/mmain")
	public String mmain() {
		String url = "/main/mmain";
		return url;
	}


}


