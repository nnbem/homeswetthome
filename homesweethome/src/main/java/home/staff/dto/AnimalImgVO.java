package home.staff.dto;

import java.util.Date;

public class AnimalImgVO {
	private int aino;
	private Date img_date;
	private String picture;
	private Long aid;
	private String name;
	private String type;
	public int getAino() {
		return aino;
	}
	public void setAino(int aino) {
		this.aino = aino;
	}
	public Date getImg_date() {
		return img_date;
	}
	public void setImg_date(Date img_date) {
		this.img_date = img_date;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public Long getAid() {
		return aid;
	}
	public void setAid(Long aid) {
		this.aid = aid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	
}
