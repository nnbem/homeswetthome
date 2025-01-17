package home.member.dto;

import java.util.Date;

public class SharingVO {
	
	private int sno;
	private String title = "";
	private String content = "";
	private int viewcnt = 0;
	private Date regDate = new Date();
	private Date sharing_UpDated;
	private int report_cnt;
	private String mid;
	// private int likeNum;
	
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
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
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getSharing_UpDated() {
		return sharing_UpDated;
	}
	public void setSharing_UpDated(Date sharing_UpDated) {
		this.sharing_UpDated = sharing_UpDated;
	}
	public int getReport_cnt() {
		return report_cnt;
	}
	public void setReport_cnt(int report_cnt) {
		this.report_cnt = report_cnt;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	/*
	 * public int getLikeNum() { return likeNum; } public void setLikeNum(int
	 * likeNum) { this.likeNum = likeNum; }
	 */
}
