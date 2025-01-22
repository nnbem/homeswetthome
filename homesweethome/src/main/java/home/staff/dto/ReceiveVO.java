package home.staff.dto;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ReceiveVO {
	
	private int rcno; // 보호동물 번호
	private String spot; //발견장소
	private String picture; //구조사진
	private String cantername; //인계센터이름
	private String breed; //품종
	private String kind; //종류
	private String gender; //성별
	private Date regDate; //발견날짜
	private String eid; //사원번호
	private long aid; //동물칩번호
	private Date receive_date; //등록날짜
	
	
	
	public Date getReceive_date() {
		return receive_date;
	}

	public void setReceive_date(Date receive_date) {
		this.receive_date = receive_date;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public long getAid() {
		return aid;
	}

	public void setAid(long aid) {
		this.aid = aid;
	}

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
	
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	public String getFormatregdate() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(regDate);
    }
	
}
