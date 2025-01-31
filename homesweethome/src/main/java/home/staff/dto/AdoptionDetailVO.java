package home.staff.dto;

import java.util.Date;

public class AdoptionDetailVO {
	
	//ADOPTION 테이블 관련 필드
	private int ano; //입양신청번호
	private String status; //신청상태
	private String title; //제목
	private String content; //내용

	// ANIMAL 테이블 관련 필드
	private long aid; //동물칩번호
	private String animalName; //동물이름
	private String character; //성격
	private String color; //색상
	private String other; //비고
	private String state; //입양상태
	private double weight; //몸무게
	private String neutralization; //중성화여부
	private int age; //나이
	
	// MEMBER 테이블 관련 필드
	private String mid; //신청자아이디
	private String memberName; //신청자이름
	private String phone; //신청자전화번호
	
	// RECEIVE 테이블 관련 필드
	private Date regDate; //발견날짜
	private String gender; //성별
	private Date receive_Date; //센터입소일
	
	// INJECTION 테이블 관련 필드 (접종 기록)
	private int vaccine; //종합백신
	private int rabies; //광견병
	private int covid; //코로나
	private int influenza; //인플루엔자
	private int kennelcough; //켄넬코프
	private int leukemia; //백혈병
	private Date heartworm; // 심장사상충 예방
	private Date authelmintic; // 구충제
	
	
	public Date getReceive_Date() {
		return receive_Date;
	}
	public void setReceive_Date(Date receive_Date) {
		this.receive_Date = receive_Date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getAno() {
		return ano;
	}
	public void setAno(int ano) {
		this.ano = ano;
	}
	public Date getHeartworm() {
		return heartworm;
	}
	public void setHeartworm(Date heartworm) {
		this.heartworm = heartworm;
	}
	public Date getAuthelmintic() {
		return authelmintic;
	}
	public void setAuthelmintic(Date authelmintic) {
		this.authelmintic = authelmintic;
	}
	public int getVaccine() {
		return vaccine;
	}
	public void setVaccine(int vaccine) {
		this.vaccine = vaccine;
	}
	public int getRabies() {
		return rabies;
	}
	public void setRabies(int rabies) {
		this.rabies = rabies;
	}
	public int getCovid() {
		return covid;
	}
	public void setCovid(int covid) {
		this.covid = covid;
	}
	public int getInfluenza() {
		return influenza;
	}
	public void setInfluenza(int influenza) {
		this.influenza = influenza;
	}
	public int getKennelcough() {
		return kennelcough;
	}
	public void setKennelcough(int kennelcough) {
		this.kennelcough = kennelcough;
	}
	public int getLeukemia() {
		return leukemia;
	}
	public void setLeukemia(int leukemia) {
		this.leukemia = leukemia;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public long getAid() {
		return aid;
	}
	public void setAid(long aid) {
		this.aid = aid;
	}
	public String getAnimalName() {
		return animalName;
	}
	public void setAnimalName(String animalName) {
		this.animalName = animalName;
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
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
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
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	    
}
