package home.member.dao;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.member.dto.SuitVO;

public interface SuitDAO {
	
	List<SuitVO> seleceSearchSuitList(PageMaker pageMaker) throws SQLException;
	
	int selectSearchSuitListCount(PageMaker pageMaker) throws SQLException;
	SuitVO selectSuitByMid(String mid) throws SQLException;
	
	List<SuitVO> selectSuitList() throws SQLException;
	
	
	void insertSuit(SuitVO suit) throws SQLException;
	void updateSuit(SuitVO suit) throws SQLException;

	List<SuitVO> selectList(PageMaker pageMaker) throws SQLException;
	
}
