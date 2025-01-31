package home.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/member")
public class BoardController {


	@GetMapping("/board")
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
	
}
