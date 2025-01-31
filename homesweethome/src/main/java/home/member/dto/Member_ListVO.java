package home.member.dto;

import java.util.Date;

public class Member_ListVO {

	private String mid;
	private String phone;
	private String name;
	private String email;
	private Date complete_Date;
	
	
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getComplete_Date() {
		return complete_Date;
	}
	public void setComplete_Date(Date complete_Date) {
		this.complete_Date = complete_Date;
	}
	
}
