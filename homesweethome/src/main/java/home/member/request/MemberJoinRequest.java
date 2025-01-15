package home.member.request;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import home.member.dto.MemberVO;

public class MemberJoinRequest {

	private String mid;
	private String pwd;
	private String name;
	private MultipartFile picture;
	private Date birth;
	private int sex;
	private String phone;
	private String address;
	private String email;
	
	
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
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
	public MultipartFile getPicture() {
		return picture;
	}
	public void setPicture(MultipartFile picture) {
		this.picture = picture;
	}
	
	public Date getBirth() {
		return birth;
	}
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public MemberVO toMemberVO() {
		MemberVO member = new MemberVO();
		
		member.setMid(mid);
		member.setPwd(pwd);
		member.setName(name);
		member.setBirth(birth);
		member.setSex(sex);
		member.setPhone(phone);
		member.setAddress(address);
		member.setEmail(email);
		
		return member;
	}
	
}
