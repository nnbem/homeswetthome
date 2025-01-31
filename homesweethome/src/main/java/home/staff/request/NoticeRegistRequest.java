package home.staff.request;

import home.staff.dto.NoticeVO;

public class NoticeRegistRequest {

	private String title;
	private String eid;
	private String content;
	
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public NoticeVO toNotice() {
		NoticeVO notice = new NoticeVO();
		
		notice.setTitle(title);
		notice.setEid(eid);
		notice.setContent(content);
		
		return notice;
	}
}
