package home.staff.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/staff")
public class StaffController {

	@GetMapping("/main")
	public String staff() {
		String url = "//staff/main";
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
	@GetMapping("/employee2")
	public String employee2() {
		String url = "staff/employee/employee2";
		return url;
	}
	
	@GetMapping("/employee/regist")
	public String employee_regi() {
		String url = "staff/employee/regist";
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
	@GetMapping("/receive/regist/open_regist")
	public String receive_rgo() {
		String url = "staff/receive/regist";
		return url;
	}
	@GetMapping("/adoption")
	public String adoption() {
		String url = "staff/adoption/adoption";
		return url;
	}
}
