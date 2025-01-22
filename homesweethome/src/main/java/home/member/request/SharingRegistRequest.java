package home.member.request;

import home.member.dto.SharingVO;

public class SharingRegistRequest {

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
	
	public SharingVO toSharing() {
		SharingVO sharing = new SharingVO();
		
		sharing.setTitle(title);
		sharing.setMid(mid);
		sharing.setContent(content);
		
		return sharing;
	}
}
