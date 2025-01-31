package home.member.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.member.dao.ReviewDAO;
import home.member.dto.ReviewVO;

public class ReviewServiceImpl implements ReviewService {
	
	private ReviewDAO reviewDAO;
	private String summernotePath;
	
	public ReviewServiceImpl(ReviewDAO reviewDAO, String summernotePath) {
		this.reviewDAO = reviewDAO;
		this.summernotePath = summernotePath;
	}
	
	@Override
	public List<ReviewVO> selectReivewList(PageMaker pageMaker) throws SQLException {
		List<ReviewVO> reviewList = reviewDAO.selectSearchReviewList(pageMaker);
		int totalCount = reviewDAO.selectSearchReviewListCount(pageMaker);
		pageMaker.setTotalCount(totalCount);
		
		return reviewList;
	}

	@Override
	public ReviewVO detail(int rno) throws SQLException {
		reviewDAO.increaseViewCount(rno);
		return reviewDAO.selectReviewByRno(rno);
	}

	@Override
	public ReviewVO getReview(int rno) throws SQLException {
		return reviewDAO.selectReviewByRno(rno);
	}

	@Override
	public List<ReviewVO> reviewListbyAno(int ano) throws SQLException {
		return reviewDAO.selectReviewByAno(ano);
	}

	@Override
	public void registReview(ReviewVO review) throws SQLException {
		int rno = reviewDAO.selectReviewSeqNext();
		review.setRno(rno);
		reviewDAO.insertReview(review);
	}

	@Override
	public void modifyReview(ReviewVO review) throws SQLException {
		reviewDAO.updateReview(review);
	}

	@Override
	public void removeReview(int rno) throws SQLException {
		reviewDAO.deleteReview(rno);
	}

	@Override
	public String getMid(int ano) throws SQLException {
		return reviewDAO.selectMidByAno(ano);
	}

	@Override
	public int getAno(String mid) throws SQLException {
		return reviewDAO.selectAnoByMid(mid);
	}

}
