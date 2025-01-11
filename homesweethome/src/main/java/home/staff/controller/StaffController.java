package home.staff.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/staff")
public class StaffController {

	@GetMapping("/main")
	public String staff() {
		String url = "/staff/main";
		return url;
	}
	
	@GetMapping("/receive")
	public String receive_m() {
		String url = "staff/receive/receive";
		return url;
	}
	@GetMapping("/receive/regist")
	public String receive_r() {
		String url = "staff/receive/regist";
		return url;
	}
	@GetMapping("/receive/detail")
	public String receive_detail() {
		String url = "staff/receive/detail";
		return url;
	}
	@GetMapping("/receive/detail/modify")
	public String receive_modify() {
		String url = "staff/receive/modify";
		return url;
	}
	 
	@GetMapping("/employee")
	public String employee() {
		String url = "staff/employee/employee";
		return url;
	}
	@GetMapping("/employee/open_regist")
	public String employee_open_regist() {
		String url = "staff/employee/open_regist";
		return url;
	}
	@GetMapping("/employee/open_modify")
	public String employee_open_modify() {
		String url = "staff/employee/open_modify";
		return url;
	}
	@GetMapping("/employee/detail")
	public String employee_detail() {
		String url = "staff/employee/detail";
		return url;
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
}
