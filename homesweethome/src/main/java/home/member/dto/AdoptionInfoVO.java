package home.member.dto;

import java.util.Date;

public class AdoptionInfoVO {
	private int aid;
	private String name;
	private String color;
	private int age;
	private int neutralization;
	private Date complete_Date;
	private String picture;
	private String breed;
	private String kind;
	private int gender;
	
	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getNeutralization() {
		return neutralization;
	}

	public void setNeutralization(int neutralization) {
		this.neutralization = neutralization;
	}
	
	public Date getComplete_Date() {
		return complete_Date;
	}

	public void setComplete_Date(Date complete_Date) {
		this.complete_Date = complete_Date;
	}
	
	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
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
	
}
