package home.staff.request;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import home.staff.dto.ReceiveVO;

public class ReceiveRegistRequest {
	

	private String spot; //발견장소
	private String cantername; //인계센터이름
	private Date regdate; //발견날짜
	private String breed; //품종
	private String kind; //종류
	private String gender; //성별
	
	
	public String getSpot() {
		return spot;
	}
	public void setSpot(String spot) {
		this.spot = spot;
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
	
	public ReceiveVO toReceiveVO() {
        ReceiveVO receive = new ReceiveVO();
      
        receive.setSpot(spot);
        receive.setCantername(cantername);
        receive.setRegdate(regdate);
        receive.setBreed(breed);
        receive.setKind(kind);
        receive.setGender(gender);

        return receive;
    }
	
}
