package home.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/member")
public class MypageController {
	
	@GetMapping("/mypage/deactivation")
	public String mypage() {
		return "member/mypage/deactivation";
	}

	@GetMapping("/mypage/deactivation/modify")
	public String mypage_modify() {
		return "member/mypage/deactivation/modify";
	}

	@PostMapping("/mypage/deactivation/modify")
	public String mypage_modify_go() {
		return "member/mypage/deactivation/modify";
	}

	@GetMapping("/mypage/deactivation/cancel")
	public String mypage_deactivation() {
		return "member/mypage/deactivation/cancel";
	}

	@GetMapping("/mypage/deactivation/open_cancel")
	public String mypage_deactivation_open() {
		return "member/mypage/deactivation/open_cancel";
	}

	@GetMapping("/mypage/adopt")
	public String mypage_adopt() {
		return "member/mypage/adopt";
	}

	@GetMapping("/mypage/adopt/open_animal")
	public String adopt_detail() {
		return "member/mypage/adopt/open_animal";
	}

	@GetMapping("/mypage/mark/list")
	public String mypage_mark() {
		return "member/mypage/mark/list";
	}

	@GetMapping("/mypage/mark/test")
	public String mark_test() {
		return "member/mypage/mark/test";
	}
	
	

	@GetMapping("/mypage/graceperiod")
	public String mypage_graceperiod() {
		String url = "/member/mypage/graceperiod/graceperiod";
		return url;
	}

	@GetMapping("/mypage/graceperiod/regist")
	public String mypage_graceperiod_regist() {
		String url = "/member/mypage/graceperiod/regist";
		return url;
	}

	@GetMapping("/mypage/graceperiod/detail")
	public String mypage_graceperiod_detail() {
		String url = "/member/mypage/graceperiod/detail";
		return url;
	}
	
	
	

	@GetMapping("/mypage/wrote")
	public String review() {
		String url = "/member/mypage/wrote";
		return url;
	}
	
	@GetMapping("/mypage/reservation")
	public String reservation() {
		String url = "/member/mypage/reservation";
		return url;
	}
	
	@GetMapping("/mypage/inquiry")
	public String inquiry() {
		String url = "/member/mypage/inquiry";
		return url;
	}
}
