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
	
	@GetMapping("/employee/regist")
	public String employee_regi() {
		String url = "staff/employee/regist";
		return url;
	}
	
}
