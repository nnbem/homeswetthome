package home.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {

	@GetMapping("/main/header")
	public String main_header() {
		String url = "/member_header";
		return url;
	}

	@GetMapping("/bmain")
	public String logout() {
		return "member/bmain"; // 로그아웃 시 비회원 페이지로 이동
	}

	@GetMapping("/intro")
	public String mainpage(Model model) {
		model.addAttribute("pageTitle", "센터소개");
		return "member/intro/intro_main";
	}

	@GetMapping("/intro/notice")
	public String notice() {
		return "member/intro/notice";
	}

	@GetMapping("/intro/way")
	public String way() {
		return "member/intro/way";
	}

	@GetMapping("/intro/notice/detail")
	public String notice_detail() {
		return "member/intro/notice/detail";
	}


	@GetMapping("/adoption")
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
	

}
