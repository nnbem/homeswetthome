package home.staff.dto;

import java.util.Date;

public class ReceiveVO {
	private int rcno;
	private String spot;
	private String picture;
	private String cantername;
	private Date regdateBefore;
	private Date regdateAfter;
	private String breed;
	private String kind;
	private int gender;
	private Date receive_date;
	public Date getRegdateBefore() {
		return regdateBefore;
	}
	public void setRegdateBefore(Date regdateBefore) {
		this.regdateBefore = regdateBefore;
	}
	public Date getRegdateAfter() {
		return regdateAfter;
	}
	public void setRegdateAfter(Date regdateAfter) {
		this.regdateAfter = regdateAfter;
	}
	private int aid;
	private String eid;
	public int getRcno() {
		return rcno;
	}
	public void setRcno(int rcno) {
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
	public Date getReceive_date() {
		return receive_date;
	}
	public void setReceive_date(Date receive_date) {
		this.receive_date = receive_date;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
}
