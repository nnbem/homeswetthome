package home.member.request;

import home.member.dto.ReviewVO;

public class ReviewRegistRequest {

	private String title;
	private String mid;
	private String content;
	
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public ReviewVO toReview() {
		ReviewVO review = new ReviewVO();
		
		review.setTitle(title);
		review.setMid(mid);
		review.setContent(content);
		
		return review;
	}
}
