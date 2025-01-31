package home.staff.dto;

import java.util.List;

public class AnimalVO {
	private Long aid;
	private String name;
	private String state;
	private String character;
	private String color;
	private int weight;
	private String neutralization;
	private int age;
	private String other;
	private String eid;
	
	private List<AnimalImgVO> animalImgList;
	
	public List<AnimalImgVO> getAnimalImgList() {
		return animalImgList;
	}
	public void setAnimalImgList(List<AnimalImgVO> animalImgList) {
		this.animalImgList = animalImgList;
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
	public String getCharacter() {
		return character;
	}
	public void setCharacter(String character) {
		this.character = character;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public String getNeutralization() {
		return neutralization;
	}
	public void setNeutralization(String neutralization) {
		this.neutralization = neutralization;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
}
