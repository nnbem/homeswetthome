package home.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import home.member.service.SearchMemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	private SearchMemberService memberService;

    @Autowired
    public MemberController(SearchMemberService memberService) {
        this.memberService = memberService;
    }

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
	
	@GetMapping("/intro/way")
	public String way() {
		return "member/intro/way";
	}
	
	@GetMapping("/intro/find_way")
	public String find_way() {
		return "member/intro/find_way";
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

}
