package home.staff.dto;

import java.text.SimpleDateFormat;
import java.util.Date;

public class NoticeVO {

	private int nno;
	private String title;
	private String content;
	private int viewcnt;
	private Date regDate;
	private Date upload_Date;
	
	public int getNno() {
		return nno;
	}
	public void setNno(int nno) {
		this.nno = nno;
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
	public Date getUpload_Date() {
		return upload_Date;
	}
	public void setUpload_Date(Date upload_Date) {
		this.upload_Date = upload_Date;
	}
	
	public String getFormatRegDate() {
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    return sdf.format(this.getRegDate()); // getRegDate()가 Date 타입 반환을 가정
	}

}
