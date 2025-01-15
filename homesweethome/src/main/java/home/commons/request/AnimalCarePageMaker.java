package home.commons.request;

import java.util.List;

public class AnimalCarePageMaker extends PageMaker {
	
	private String regdateBefore;
	private String regdateAfter;
	private String name;
	private List<String> kindList;
	private String breed;
	private List<String> stateList;
	public List<String> getKindList() {
		return kindList;
	}

	public void setKindList(List<String> kindList) {
		this.kindList = kindList;
	}


	public List<String> getStateList() {
		return stateList;
	}


	public void setStateList(List<String> stateList) {
		this.stateList = stateList;
	}


	private String eid;
	

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


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getBreed() {
		return breed;
	}


	public void setBreed(String breed) {
		this.breed = breed;
	}


	public String getEid() {
		return eid;
	}


	public void setEid(String eid) {
		this.eid = eid;
	}


	@Override
	public String toString() {
		return "AnimalCarePageMaker [regdateBefore=" + regdateBefore + ", regdateAfter=" + regdateAfter + ", name="
				+ name + ", kindList=" + kindList + ", breed=" + breed + ", stateList=" + stateList + ", eid=" + eid
				+ ", getPage()=" + getPage() + ", getPerPageNum()=" + getPerPageNum() + "]";
	}

	
}
