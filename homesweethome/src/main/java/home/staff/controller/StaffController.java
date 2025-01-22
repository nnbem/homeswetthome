package home.staff.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import home.staff.service.EmployeeService;

@Controller
@RequestMapping("/staff")
public class StaffController {

	@GetMapping("/main")
	public String staff() {
		String url = "/staff/main";
		return url;
	}

	@GetMapping("/login")
	public String loginget(@ModelAttribute(name = "retUrl") String retUrl, HttpServletResponse response)throws Exception{
		String url = "staff/commons/loginForm";
		response.setStatus(302);
		return url;
	}
	@PostMapping("/login")
	public String loginpost(
	    @RequestParam("username") String username,
	    @RequestParam("password") String password,
	    HttpSession session,
	    HttpServletResponse response,
	    Model model
	) throws Exception {
	    String url = "redirect:/staff/home"; // 로그인 성공 시 이동할 기본 페이지

	    // 로그인 로직 (임시 검증 로직 사용)
	    if (username.equals("admin") && password.equals("password123")) {
	        session.setAttribute("loggedInUserId", username); // 세션에 사용자 ID 저장
	        return url;
	    } else {
	        // 로그인 실패 시 처리
	        model.addAttribute("loginError", "Invalid username or password.");
	        return "staff/commons/loginForm";
	    }
	}
	
	@GetMapping("/index")
	public String index() {
		String url = "/staff/main";
		return url;
	}


	@GetMapping("/accessDenied")
	public void accessDenied() {}
	
	@GetMapping("/loginTimeOut")
	public String loginTimeOut(Model model) throws Exception{
		String url = "/staff/commons/loginSessionOut";
		model.addAttribute("message","세션이 만료되었습니다.\\n다시 로그인 해 주세요");
		return url;
	}
	
	@GetMapping("/loginExpired")
	public String loginExpired(Model model)throws Exception{
		String url = "/staff/commons/loginSessionOut";
		model.addAttribute("message", "다른 장치에서 중복 로그인이 확인되었습니다.");
		return url;
	}
	
	
	

	@GetMapping("/member/list")
	public String member_list() {
		return "staff/member/list";
	}

	@PostMapping("/member/list")
	public String member_list1() {
		return "staff/member/list";
	}

	@GetMapping("/member/list/detail")
	public String member_detail() {
		return "staff/member/list/detail";
	}

	@GetMapping("/member/deactivation")
	public String deactive() {
		return "staff/member/deactivation";
	}

	@PostMapping("/member/deactivation")
	public String deactive_detail() {
		return "staff/member/deactivation";
	}

	@GetMapping("/member/list/deactivation_detail")
	public String deactivation_detail() {
		return "staff/member/list/deactivation_detail";
	}

	

	@GetMapping("/adoption")
	public String adoption() {
		String url = "staff/adoption/adoption";
		return url;
	}

	@GetMapping("/adoption/detail")
	public String adoption_detail() {
		String url = "staff/adoption/detail";
		return url;
	}

	@GetMapping("/graceperiod")
	public String graceperiod() {
		String url = "staff/graceperiod/graceperiod";
		return url;
	}

	@GetMapping("/graceperiod/detail")
	public String graceperiod_detail() {
		String url = "staff/graceperiod/detail";
		return url;
	}

	@GetMapping("/reserve")
	public String reserve() {
		String url = "staff/reserve/reserve";
		return url;
	}

	@GetMapping("/reserve/detail")
	public String reserve_detail() {
		String url = "staff/reserve/detail";
		return url;
	}

	@GetMapping("/board/report")
	public String report() {
		return "staff/board/report";
	}

	@GetMapping("/board/report/detail")
	public String report_detail() {
		return "staff/board/report/detail";
	}

	@GetMapping("/board/report/complete")
	public String report_complete() {
		return "staff/board/report/complete";
	}

	@GetMapping("/board/review")
	public String review() {
		return "staff/board/review";
	}

	@GetMapping("/board/review/detail")
	public String review_detail() {
		return "staff/board/review/detail";
	}

	@GetMapping("/board/review/complete")
	public String review_complete() {
		return "staff/board/review/complete";
	}

	@GetMapping("/board/inquiry")
	public String inquiry() {
		return "staff/board/inquiry";
	}

	@GetMapping("/board/inquiry/detail")
	public String inquiry_detail() {
		return "staff/board/inquiry/detail";
	}

	@GetMapping("/board/inquiry/complete")
	public String inquiry_complete() {
		return "staff/board/inquiry/complete";
	}
}
