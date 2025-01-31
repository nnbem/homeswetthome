package home.staff.dto;

import java.util.Date;
import java.util.List;

public class AnimalCareVO {
	private Long aid;
	private String name;
	private String state;
	private String kind;
	private String breed;
	private Date regdate;
	private String eid;
	private String gender;
	private List<AnimalImgVO> animalImgList;
	
	
	
	public List<AnimalImgVO> getAnimalImgList() {
		return animalImgList;
	}
	public void setAnimalImgList(List<AnimalImgVO> animalImgList) {
		this.animalImgList = animalImgList;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
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
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getBreed() {
		return breed;
	}
	public void setBreed(String breed) {
		this.breed = breed;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	
}
