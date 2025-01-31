package home.staff.request;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import home.staff.dto.EmployeeVO;

public class EmployeeModifyRequest {

	private String pwd; //비밀번호
	private String phone; //전화번호
	private String email; //이메일
	private String department; //주소
	private String position; //부서
	private MultipartFile picture; //프로필사진
	private List<String> authority; //권한
	
	
	

	public MultipartFile getPicture() {
		return picture;
	}
	public void setPicture(MultipartFile picture) {
		this.picture = picture;
	}
	public List<String> getAuthority() {
		return authority;
	}
	public void setAuthority(List<String> authority) {
		this.authority = authority;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
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
		employee.setPwd(pwd);
		employee.setPhone(phone);
		employee.setEmail(email);
		employee.setDepartment(department);
		employee.setPosition(position);
		employee.setAuthorities(authority);
		
		return employee;
	}
	
}
