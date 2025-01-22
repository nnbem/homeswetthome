package home.member.request;

import home.member.dto.SharingVO;

public class SharingModifyRequest extends SharingRegistRequest{

	private int sno;

	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public SharingVO toSharingVO() {
		SharingVO sharing = super.toSharing();
		
		sharing.setSno(sno);
		
		return sharing;
	}
	
}
