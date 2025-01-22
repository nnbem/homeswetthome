package home.staff.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import home.commons.request.PageMaker;
import home.staff.dto.EmployeeVO;
import home.staff.request.EmployeeModifyRequest;
import home.staff.service.EmployeeService;

@Controller
@RequestMapping("/staff")
public class EmployeeController {
	
	private EmployeeService employeeService;

	@Autowired
	public EmployeeController(EmployeeService employeeService, EmployeeService employee) {
		this.employeeService = employeeService;
	}
	
	@GetMapping("/employee")
	public String List(@ModelAttribute PageMaker pageMaker, Model model) throws Exception {
		List<EmployeeVO> employeeList = employeeService.list(pageMaker);
		model.addAttribute("employeeList", employeeList);
		return "/staff/employee/employee";
	}
	
	@GetMapping("/employee/detail")
	public String employee_detail(String eid, Model model) throws Exception {
		EmployeeVO employee = employeeService.getEmployee(eid);
		
		if (employee == null) {
			model.addAttribute("errorMessage", "해당 eid(" + eid + " )에 대한 데이터를 찾을 수 없습니다.");
			return "errorPage";
		}
		
		model.addAttribute("employee", employee);
		return "/staff/employee/detail";
	}
	String url = "staff/employee/open_regist";

	@GetMapping("/employee/open_regist")
	public String employee_open_regist() {
		return url;
	}

	@GetMapping("/employee/modify")
	public String employee_modify(String eid, Model model) throws Exception {
		EmployeeVO employee = employeeService.getEmployee(eid);
		
		if(employee == null) {
			model.addAttribute("errorMessage", "해당 eid(" + eid + ")에 대한 데이터를 찾을 수 없습니다.");
			return "errorPage";
		}
		
		model.addAttribute("employee", employee);
		return "staff/employee/modify";
	}
	@PostMapping("/employee/modify/post")
	public String employee_modify_post(@ModelAttribute EmployeeModifyRequest modifyRequest, Model model) throws Exception {

	    // modifyRequest에서 데이터 확인
	    System.out.println("Received modifyRequest: " + modifyRequest);
	    System.out.println("Received pwd: " + modifyRequest.getPwd());

	    // EmployeeVO 변환
	    EmployeeVO employee = modifyRequest.toEmployeeVO();

	    // 변환 후 EmployeeVO 확인
	    System.out.println("Converted EmployeeVO: " + employee);
	    System.out.println("EmployeeVO pwd: " + employee.getPwd());

	    // 기존 로직 실행
	    EmployeeVO existingEmployee = employeeService.getEmployee(employee.getEid());
	    if (existingEmployee == null) {
	        model.addAttribute("errorMessage", "해당 데이터를 찾을 수 없습니다.");
	        return "/errorPage";
	    }

	    employee.setName(employee.getName() == null ? existingEmployee.getName() : employee.getName());
	    employee.setPwd(employee.getPwd() == null ? existingEmployee.getPwd() : employee.getPwd());
	    employee.setBirth(employee.getBirth() == null ? existingEmployee.getBirth() : employee.getBirth());
	    employee.setJoid_date(employee.getJoid_date() == null ? existingEmployee.getJoid_date() : employee.getJoid_date());

	    System.out.println("Final EmployeeVO for modification: " + employee);

	    employeeService.modify(employee);
	    model.addAttribute("message", "수정되었습니다.");
	    return "/staff/employee/modify_success";
	}


}
