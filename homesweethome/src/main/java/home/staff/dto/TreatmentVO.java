package home.staff.dto;

import java.util.Date;

public class TreatmentVO {
	private int tno;
	private Date treatment_date;
	private String cure;
	private Date disease_date;
	private String sympton;
	private String opinion;
	private String other;
	private Long aid;
	private String eid;
	private String disease;
	
	public int getTno() {
		return tno;
	}
	public void setTno(int tno) {
		this.tno = tno;
	}
	public String getCure() {
		return cure;
	}
	public void setCure(String cure) {
		this.cure = cure;
	}
	public Date getTreatment_date() {
		return treatment_date;
	}
	public void setTreatment_date(Date treatment_date) {
		this.treatment_date = treatment_date;
	}
	public Date getDisease_date() {
		return disease_date;
	}
	public void setDisease_date(Date disease_date) {
		this.disease_date = disease_date;
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
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	
}
