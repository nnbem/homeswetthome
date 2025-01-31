package home.staff.request;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import home.staff.dto.AnimalImgVO;
import home.staff.dto.AnimalVO;
import home.staff.dto.ReceiveVO;

public class AnimalRegistRequest {
	
	private Long aid;
	private String name;
	private String state;
	private String character;
	private String color;
	private int weight;
	private String neutralization;
	private int age;
	private String gender;
	private String other;
	private String eid;
	private String breed;
	private String kind;
	private List<MultipartFile> pictureList;


	public AnimalVO toAnimal() {
		AnimalVO animal = new AnimalVO();
		
		animal.setAid(aid);
		animal.setName(name);
		animal.setState(state);
		animal.setCharacter(character);
		animal.setColor(color);
		animal.setWeight(weight);
		animal.setNeutralization(neutralization);
		animal.setAge(age);
		animal.setOther(other);
		animal.setEid(eid);
		return animal;
	}
	
	public ReceiveVO toReceive() {
		ReceiveVO receive = new ReceiveVO();
		
		receive.setBreed(breed);
		receive.setKind(kind);
		receive.setGender(gender);
		receive.setAid(aid);
		
		return receive;
	}
	
	
	public List<MultipartFile> getPictureList() {
		return pictureList;
	}

	public void setPictureList(List<MultipartFile> pictureList) {
		this.pictureList = pictureList;
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
	
	
}
