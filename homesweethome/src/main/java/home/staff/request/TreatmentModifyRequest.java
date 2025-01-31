package home.staff.request;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import home.staff.dto.TreatmentVO;

public class TreatmentModifyRequest {
	
	private Long aid;
	private String eid;
	private String cure;
	private String disease;
	private String sympton;
	private String opinion;
	private String other;
	private Date treatment_date;
	private Date disease_date;
	private int tno;
	

	public TreatmentVO toTreatment() {

		TreatmentVO treatment = new TreatmentVO();
		treatment.setAid(this.aid);
		treatment.setEid(this.eid);
		treatment.setCure(this.cure);
		treatment.setDisease(this.disease);
		treatment.setSympton(this.sympton);
		treatment.setOpinion(this.opinion);
		treatment.setOther(this.other);
		treatment.setTreatment_date(this.treatment_date);
		treatment.setDisease_date(this.disease_date);
		treatment.setTno(this.tno);
		
		return treatment;
	}
	
	
	
	public int getTno() {
		return tno;
	}
	public void setTno(int tno) {
		this.tno = tno;
	}
	public Long getAid() {
		return aid;
	}
	public void setAid(Long aid) {
		this.aid = aid;
	}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public String getCure() {
		return cure;
	}
	public void setCure(String cure) {
		this.cure = cure;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	public String getSympton() {
		return sympton;
	}
	public void setSympton(String sympton) {
		this.sympton = sympton;
	}
	public String getOpinion() {
		return opinion;
	}
	public void setOpinion(String opinion) {
		this.opinion = opinion;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	public Date getTreatment_date() {
		return treatment_date;
	}
	@DateTimeFormat(pattern = "yyyy-MM-DD")
	public void setTreatment_date(Date treatment_date) {
		this.treatment_date = treatment_date;
	}
	public Date getDisease_date() {
		return disease_date;
	}
	@DateTimeFormat(pattern = "yyyy-MM-DD")
	public void setDisease_date(Date disease_date) {
		this.disease_date = disease_date;
	}
	
	
	
}

