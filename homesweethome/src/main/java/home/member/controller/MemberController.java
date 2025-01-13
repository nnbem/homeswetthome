package home.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {


	@GetMapping("/main/guest")
	public String guest() {
		String url = "/member/guest_main";
		return url;
	}
	@GetMapping("/main")
	public String main() {
		String url = "/member/member_main";
		return url;
	}
	
	@GetMapping("/animal")
	public String animal_mmain() {
		String url = "/member/animal/announcement";
		return url;
	}
	
	
	@GetMapping("/adoption/main")
	public String adoption_mmain() {
		String url = "/member/adoption/adoption_main";
		return url;
	}
	@GetMapping("/adoption/education")
	public String adoption_online() {
		String url = "/member/adoption/education";
		return url;
	}
	@GetMapping("/adoption/suit")
	public String adoption_suit() {
		String url = "/member/adoption/suit";
		return url;
	}
	@GetMapping("/adoption/suit/form")
	public String adoption_suit_form() {
		String url = "/member/adoption/suit_form";
		return url;
	}
	
	@GetMapping("/adoption/reserve")
	public String adoption_reserve() {
		String url = "/member/adoption/reserve";
		return url;
	}
	@GetMapping("/adoption/reserve/form")
	public String adoption_reserve_form() {
		String url = "/member/adoption/reserve_form";
		return url;
	}
	
	@GetMapping("/adoption/application")
	public String adoption_application() {
		String url = "/member/adoption/application";
		return url;
	}
	@GetMapping("/adoption/application/form")
	public String adoption_application_form() {
		String url = "/member/adoption/application_form";
		return url;
	}


	
	@GetMapping("/board/main")
	public String board_mmain() {
		String url = "/member/board/board_main";
		return url;
	}
	
	@GetMapping("/board/perfomance")
	public String board_perfomance() {
		String url = "/member/board/perfomance/perfomance_main";
		return url;
	}
	@GetMapping("/board/perfomance/regist")
	public String board_perfomance_regist() {
		String url = "/member/board/perfomance/regist";
		return url;
	}
	@GetMapping("/board/perfomance/detail")
	public String board_perfomance_detail() {
		String url = "/member/board/perfomance/detail";
		return url;
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

}


