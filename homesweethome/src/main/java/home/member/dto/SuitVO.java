package home.member.dto;

import java.util.Date;

public class SuitVO {
	
	private int stno; //점검번호
	private Date regDate; //점검날짜
	private int living_env_score; //거주 환경 항목 점수
	private int pet_experience_score; //반려동물 경험 항목 점수
	private int family_consent_score; //가족 동의 항목 점수
	private int financial_score; //경제적 능력 항목 점수
	private int stability_score; //감정 관리 항목 점수
	private String consult_score; //상담 여부
	private String mid; //신청자 아이디
	
	public int getStno() {
		return stno;
	}
	public void setStno(int stno) {
		this.stno = stno;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getLiving_env_score() {
		return living_env_score;
	}
	public void setLiving_env_score(int living_env_score) {
		this.living_env_score = living_env_score;
	}
	public int getPet_experience_score() {
		return pet_experience_score;
	}
	public void setPet_experience_score(int pet_experience_score) {
		this.pet_experience_score = pet_experience_score;
	}
	public int getFamily_consent_score() {
		return family_consent_score;
	}
	public void setFamily_consent_score(int family_consent_score) {
		this.family_consent_score = family_consent_score;
	}
	public int getFinancial_score() {
		return financial_score;
	}
	public void setFinancial_score(int financial_score) {
		this.financial_score = financial_score;
	}
	public int getStability_score() {
		return stability_score;
	}
	public void setStability_score(int stability_score) {
		this.stability_score = stability_score;
	}
	public String getConsult_score() {
		return consult_score;
	}
	public void setConsult_score(String consult_score) {
		this.consult_score = consult_score;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	

}
