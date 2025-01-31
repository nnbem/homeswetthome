package home.staff.dto;


import java.util.Date;
import java.util.List;

public class EmployeeVO {
	private String eid; //사원아이디
	private String pwd; //패스워드
	private String name; //이름
	private String phone; //전화번호
	private String email; //이메일
	private Date birth; //생년월일
	private String department; //주소
	private String position; //부서
	private Date joid_date; //입사일
	private String picture; //사진
	private int enabled; //상태
	private List<String> authorities;
	
	
	public int getEnabled() {
		return enabled;
	}
	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
	public List<String> getAuthorities() {
		return authorities;
	}
	public void setAuthorities(List<String> authorities) {
		this.authorities = authorities;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
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
	public Date getJoid_date() {
		return joid_date;
	}
	public void setJoid_date(Date joid_date) {
		this.joid_date = joid_date;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}

}
