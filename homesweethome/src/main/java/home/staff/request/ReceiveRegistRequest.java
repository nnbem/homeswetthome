package home.staff.request;

import java.util.Date;

import home.staff.dto.ReceiveVO;

public class ReceiveRegistRequest {
	
	private long rcno; //인계번호
	private String spot; //발견장소
	private String picture; //발견사진
	private String cantername; //인계센터이름
	private Date regdate; //발견날짜
	private String breed; //품종
	private String kind; //종류
	private String gender; //성별
	private long aid; //동물보호등록번호
	
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
	
	public ReceiveVO toReceiveVO() {
        ReceiveVO receive = new ReceiveVO();
        receive.setRcno(rcno);
        receive.setSpot(spot);
        receive.setPicture(picture);
        receive.setCantername(cantername);
        receive.setRegdate(regdate);
        receive.setBreed(breed);
        receive.setKind(kind);
        receive.setGender(gender);
        receive.setAid(aid);
        
        return receive;
    }
	
	
}
