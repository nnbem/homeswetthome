package home.member.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import home.commons.request.PageMaker;
import home.member.dto.ReviewVO;

public class ReviewDAOImpl implements ReviewDAO {
	
	private SqlSession session;
	public ReviewDAOImpl(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<ReviewVO> selectSearchReviewList(PageMaker pageMaker) throws SQLException {
		int startRow = pageMaker.getStartRow();
		int endRow = startRow + pageMaker.getPerPageNum()-1;
		
		
		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", pageMaker.getSearchType());
		dataParam.put("keyword", pageMaker.getKeyword());
		
		List<ReviewVO> reviewList = session.selectList("Review-Mapper.selectSearchReviewList", dataParam);
		
		return reviewList;
	}

	@Override
	public int selectSearchReviewListCount(PageMaker pageMaker) throws SQLException {
		return session.selectOne("Review-Mapper.selectSearchReviewListCount", pageMaker);
	}

	@Override
	public ReviewVO selectReviewByRno(int rno) throws SQLException {
		return session.selectOne("Review-Mapper.selectReviewByRno", rno);
	}
	
	@Override
	public List<ReviewVO> selectReviewByAno(int ano) throws SQLException {
		return session.selectList("Review-Mapper.selectReviewByAno", ano);
	}

	@Override
	public int selectAnoByRno(int rno) throws SQLException {
		return session.selectOne("Review-Mapper.selectAnoByRno", rno);
	}

	@Override
	public String selectMidByAno(int ano) throws SQLException {
		return session.selectOne("Review-Mapper.selectMidByAno", ano);
	}

	@Override
	public int selectReviewSeqNext() throws SQLException {
		return session.selectOne("Review-Mapper.selectReviewSeqNext");
	}

	@Override
	public void insertReview(ReviewVO review) throws SQLException {
		session.insert("Review-Mapper.insertReview", review);
	}

	@Override
	public void updateReview(ReviewVO review) throws SQLException {
		session.update("Review-Mapper.updateReview", review);
	}

	@Override
	public void deleteReview(int rno) throws SQLException {
		session.delete("Review-Mapper.deleteReview", rno);
	}

	@Override
	public void increaseViewCount(int rno) throws SQLException {
		session.update("Review-Mapper.increaseViewCount", rno);
	}

	@Override
	public int selectAnoByMid(String mid) throws SQLException {
		return session.selectOne("Review-Mapper.selectAnoByMid", mid);
	}

	@Override
	public void increaseWritingCount(int ano) throws SQLException {
		session.update("Review-Mapper.increaseWritingCount", ano);
	}


}
