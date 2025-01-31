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
	private String eid;
	
	//pin - get, set 추가
	private int pin;
	
	public int getPin() {
		return pin;
	}
	public void setPin(int pin) {
		this.pin = pin;
	}
	//
	
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
	
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public String getFormatRegDate() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(regDate);
    }

}
