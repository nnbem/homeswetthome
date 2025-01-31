package home.staff.dto;

import java.util.Date;

public class InjectionVO {
	private int ijno;
	private int vaccine;
	private int rabies;
	private int covid;
	private int influenza;
	private int kennelcough;
	private int leukemia;
	private Date heartworm;
	private Date authelmintic;
	private Long aid;
	private String eid;
	private Date injection_date;
	
	
	
	@Override
	public String toString() {
		return "InjectionVO [ijno=" + ijno + ", vaccine=" + vaccine + ", rabies=" + rabies + ", covid=" + covid
				+ ", influenza=" + influenza + ", kennelcough=" + kennelcough + ", leukemia=" + leukemia
				+ ", heartworm=" + heartworm + ", authelmintic=" + authelmintic + ", aid=" + aid + ", eid=" + eid
				+ ", injection_date=" + injection_date + "]";
	}
	public int getIjno() {
		return ijno;
	}
	public void setIjno(int ijno) {
		this.ijno = ijno;
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
	public Date getInjection_date() {
		return injection_date;
	}
	public void setInjection_date(Date injection_date) {
		this.injection_date = injection_date;
	}
	
	
}
