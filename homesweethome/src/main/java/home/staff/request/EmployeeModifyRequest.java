package home.staff.request;

import home.staff.dto.EmployeeVO;

public class EmployeeModifyRequest {

	private String eid;
	private String pwd;
	private String phone;
	private String email;
	private String department;
	private String position;
	
	
	
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	
	public EmployeeVO toEmployeeVO() {
		EmployeeVO employee = new EmployeeVO();
		employee.setEid(eid);
		employee.setPwd(pwd);
		employee.setPhone(phone);
		employee.setEmail(email);
		employee.setDepartment(department);
		employee.setPosition(position);
		
		return employee;
	}
	
}
