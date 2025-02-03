package home.member.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import home.commons.request.PageMaker;
import home.member.dto.SuitVO;

public class SuitDAOImpl implements SuitDAO{

	@Autowired
	private SqlSession session;

	public SuitDAOImpl(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<SuitVO> seleceSearchSuitList(PageMaker pageMaker) throws SQLException {
		int offset = pageMaker.getStartRow() - 1;
		int limit = pageMaker.getPerPageNum();
		
		RowBounds bounds = new RowBounds(offset, limit);
		
		List<SuitVO> suitList = session.selectList("Suit-Mapper.selectSearchSuitList", pageMaker, bounds);
		return suitList;
	}

	@Override
	public int selectSearchSuitListCount(PageMaker pageMaker) throws SQLException {
		return session.selectOne("Suit-Mapper.selectSearchSuitListCount", pageMaker);
	}

	@Override
	public List<SuitVO> selectSuitList() throws SQLException {
		return session.selectList("Suit-Mapper.selectSuitList");
	}

	@Override
	public SuitVO selectSuitByMid(String mid) throws SQLException {
		return session.selectOne("Suit-Mapper.selectSuitByMid", mid);
	}

	@Override
	public void insertSuit(SuitVO suit) throws SQLException {
		session.insert("Suit-Mapper.insertSuit", suit);
	}

	@Override
	public void updateSuit(SuitVO suit) throws SQLException {
		session.update("Suit-Mapper.updateSuit", suit);
	}

	@Override
	public List<SuitVO> selectList(PageMaker pageMaker) throws SQLException {
		int offset = pageMaker.getStartRow();
		int limit = pageMaker.getPerPageNum();
		RowBounds bound = new RowBounds(offset, limit);
		
		return session.selectList("Suit-Mapper.selectSuitList", pageMaker, bound);
	}

}
