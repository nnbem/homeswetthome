package home.staff.request;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import home.staff.dto.EmployeeVO;

public class EmployeeModifyRequest {

	private String eid; // 사원번호(아이디)
	private String pwd; //비밀번호
	private String phone; //전화번호
	private String email; //이메일
	private String department; //주소
	private String position; //부서
	private String birth;
    private String joid_date;
	private MultipartFile picture; //프로필사진
	private List<String> authority; //권한
	
	
	

	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getJoid_date() {
		return joid_date;
	}
	public void setJoid_date(String joid_date) {
		this.joid_date = joid_date;
	}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
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
		employee.setEid(eid); // 수정 대상 식별자 설정
		employee.setPwd(pwd);
		employee.setPhone(phone);
		employee.setEmail(email);
		employee.setDepartment(department);
		employee.setPosition(position);
		employee.setAuthorities(authority);
		
		// 생년월일과 입사일을 String에서 Date로 변환하는 로직 추가 필요
        if(birth != null && !birth.trim().isEmpty()){
            employee.setBirth(java.sql.Date.valueOf(birth)); // 형식: yyyy-MM-dd
        }
        if(joid_date != null && !joid_date.trim().isEmpty()){
            employee.setJoid_date(java.sql.Date.valueOf(joid_date));
        }
		
		return employee;
	}
	
}
