package home.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/member")
public class BoardController {

	
	@GetMapping("/board/review")
	public String review() {
		String url = "/member/board/review/review";
		return url;
	}
	
	@GetMapping("/board/review/detail")
	public String reviewDetail() {
		String url = "/member/board/review/detail";
		return url;
	}

	@GetMapping("/board")
	public String board_mmain() {
		String url = "/member/board/board_main";
		return url;
	}

	@GetMapping("/board/sharing")
	public String sharing() {
		return "member/board/sharing";
	}

	@GetMapping("/board/sharing/detail")
	public String sharing_detail() {
		return "member/board/sharing/detail";
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
	
}
