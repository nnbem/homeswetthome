package home.commons.request;

public class TreatmentPageMaker extends PageMaker {
	
	private String regdateBefore;
	private String regdateAfter;
	private Long aid;
	
	public String getRegdateBefore() {
		return regdateBefore;
	}
	public void setRegdateBefore(String regdateBefore) {
		this.regdateBefore = regdateBefore;
	}
	public String getRegdateAfter() {
		return regdateAfter;
	}
	public void setRegdateAfter(String regdateAfter) {
		this.regdateAfter = regdateAfter;
	}
	public Long getAid() {
		return aid;
	}
	public void setAid(Long aid) {
		this.aid = aid;
	}
	
}
