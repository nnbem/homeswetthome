package home.staff.request;


import java.util.Date;
import java.util.UUID;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import home.staff.dto.EmployeeVO;

public class EmployeeRegistRequest {
	
	private String eid; //사원번호
	private String pwd; //비밀번호
	private String name; //이름
	private String phone; //전화번호
	private String email; //이메일
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birth;

	private String department; //주소
	private String position; //부서
	@DateTimeFormat(pattern = "yyyy-MM-dd") 
	private Date joid_date;
	private MultipartFile picture; //사진경로
	//private List<String> authority; //권한
	
	
	public String getName() {
		return name;
	}
	public Date getJoid_date() {
		return joid_date;
	}
	public void setJoid_date(Date joid_date) {
		this.joid_date = joid_date;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
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
	public MultipartFile getPicture() {
		return picture;
	}
	public void setPicture(MultipartFile picture) {
		this.picture = picture;
	}
	

	
	public EmployeeVO toEmployeeVO() {
		EmployeeVO employee = new EmployeeVO();
		employee.setEid(eid);
		employee.setPwd(pwd);
		employee.setName(name);
		employee.setPhone(phone);
		employee.setEmail(email);
		employee.setBirth(birth);
		employee.setDepartment(department);
		employee.setPosition(position);
		employee.setJoid_date(joid_date);
		
		if (picture != null && !picture.isEmpty()) {
	        String fileName = UUID.randomUUID().toString() + "_" + picture.getOriginalFilename();
	        employee.setPicture(fileName);
	    } else {
	        employee.setPicture(null); // 파일이 없는 경우
	    }
		
		return employee;
	}
	
}
