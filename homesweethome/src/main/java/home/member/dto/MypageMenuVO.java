package home.member.dto;

public class MypageMenuVO {
	private String tcode; //코드
	private String tname; //이름
	private String turl; //url
	private String ttext; //javascript
	private String upcode; //상위레벨코드
	private int tlevel;  //메뉴레벨
	
	public String getTcode() {
		return tcode;
	}
	public void setTcode(String tcode) {
		this.tcode = tcode;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTurl() {
		return turl;
	}
	public void setTurl(String turl) {
		this.turl = turl;
	}
	public String getTtext() {
		return ttext;
	}
	public void setTtext(String ttext) {
		this.ttext = ttext;
	}
	public String getUpcode() {
		return upcode;
	}
	public void setUpcode(String upcode) {
		this.upcode = upcode;
	}
	public int getTlevel() {
		return tlevel;
	}
	public void setTlevel(int tlevel) {
		this.tlevel = tlevel;
	}


}
