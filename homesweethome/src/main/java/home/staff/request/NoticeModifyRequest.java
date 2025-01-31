package home.staff.request;

import home.staff.dto.NoticeVO;

public class NoticeModifyRequest extends NoticeRegistRequest {

	private int nno;

	public int getNno() {
		return nno;
	}

	public void setNno(int nno) {
		this.nno = nno;
	}
	
	public NoticeVO toNoticeVO() {
		NoticeVO notice = super.toNotice();
		
		notice.setNno(nno);
		
		return notice;
	}
}
