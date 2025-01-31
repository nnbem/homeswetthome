package home.member.dto;

import java.util.Date;

public class ReviewVO {
	private int rno;
	private String title;
	private String content;
	private int viewcount;
	private Date created;
	private Date review_update;
	private int ano;
	private int report_count;
	private Long aid;
	private int writing_count;
	private int likenum;
	private String mid;
	
	
	
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
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
	public int getViewcount() {
		return viewcount;
	}
	public void setViewcount(int viewcount) {
		this.viewcount = viewcount;
	}
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	public Date getReview_update() {
		return review_update;
	}
	public void setReview_update(Date review_update) {
		this.review_update = review_update;
	}
	public int getAno() {
		return ano;
	}
	public void setAno(int ano) {
		this.ano = ano;
	}
	public int getReport_count() {
		return report_count;
	}
	public void setReport_count(int report_count) {
		this.report_count = report_count;
	}
	public Long getAid() {
		return aid;
	}
	public void setAid(Long aid) {
		this.aid = aid;
	}
	public int getWriting_count() {
		return writing_count;
	}
	public void setWriting_count(int writing_count) {
		this.writing_count = writing_count;
	}
	public int getLikenum() {
		return likenum;
	}
	public void setLikenum(int likenum) {
		this.likenum = likenum;
	}
	
}
