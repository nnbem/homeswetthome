package home.staff.dto;

import java.util.Date;

public class ReceiveVO {
	private long rcno;
	private String spot;
	private String picture;
	private String cantername;
	private Date regdate;
	private String breed;
	private String kind;
	private int gender;
	private long aid;
	private String eid;
	private Date receive_date;
	
	public long getRcno() {
		return rcno;
	}
	public void setRcno(long rcno) {
		this.rcno = rcno;
	}
	public String getSpot() {
		return spot;
	}
	public void setSpot(String spot) {
		this.spot = spot;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getCantername() {
		return cantername;
	}
	public void setCantername(String cantername) {
		this.cantername = cantername;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getBreed() {
		return breed;
	}
	public void setBreed(String breed) {
		this.breed = breed;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public long getAid() {
		return aid;
	}
	public void setAid(long aid) {
		this.aid = aid;
	}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public Date getReceive_date() {
		return receive_date;
	}
	public void setReceive_date(Date receive_date) {
		this.receive_date = receive_date;
	}
	
	
	
}
