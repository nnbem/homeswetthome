package home.member.request;

import home.member.dto.ReviewVO;

public class ReviewModifyRequest extends ReviewRegistRequest {

	private int rno;
	
	
	public int getRno() {
		return rno;
	}


	public void setRno(int rno) {
		this.rno = rno;
	}


	@Override
	public ReviewVO toReview() {
		return super.toReview();
	}
	
}
