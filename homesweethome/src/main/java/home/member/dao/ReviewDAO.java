package home.member.dao;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.member.dto.ReviewVO;

public interface ReviewDAO {

	List<ReviewVO> selectSearchReviewList(PageMaker pageMaker)throws SQLException;
	int selectSearchReviewListCount(PageMaker pageMaker)throws SQLException;
	ReviewVO selectReviewByRno(int rno)throws SQLException;
	List<ReviewVO> selectReviewByAno(int ano)throws SQLException;
	int selectAnoByRno(int rno)throws SQLException;
	String selectMidByAno(int ano)throws SQLException;
	int selectAnoByMid(String mid)throws SQLException;
	int selectReviewSeqNext()throws SQLException;
	void insertReview(ReviewVO review)throws SQLException;
	void updateReview(ReviewVO review)throws SQLException;
	void deleteReview(int rno)throws SQLException;
	void increaseViewCount(int rno)throws SQLException;
	void increaseWritingCount(int ano)throws SQLException;
}
