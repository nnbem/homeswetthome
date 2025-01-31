package home.member.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.member.dto.ReviewVO;

public interface ReviewService {
	List<ReviewVO> selectReivewList(PageMaker pageMaker)throws SQLException;
	ReviewVO detail(int rno)throws SQLException;
	ReviewVO getReview(int rno)throws SQLException;
	List<ReviewVO> reviewListbyAno(int ano)throws SQLException;
	void registReview(ReviewVO review)throws SQLException;
	void modifyReview(ReviewVO review)throws SQLException;
	void removeReview(int rno)throws SQLException;
	String getMid(int ano)throws SQLException;
	int getAno(String mid)throws SQLException;
}
