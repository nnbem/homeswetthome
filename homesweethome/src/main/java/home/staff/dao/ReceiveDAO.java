package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dto.ReceiveVO;

public interface ReceiveDAO {
	
	List<ReceiveVO> selectSearchReceiveList(PageMaker pageMaker) throws SQLException;
	ReceiveVO selectReceiveByRcno(int rcno) throws SQLException;
	ReceiveVO selectReceiveByAid(long aid) throws SQLException;
	
	int selectSearchReceiveListCount(PageMaker pageMaker) throws SQLException;
	
	
	void insertReceive(ReceiveVO receive) throws SQLException;
	void updateReceive(ReceiveVO receive) throws SQLException;
	void deleteReceive(int rcno) throws SQLException;
	
	int selectReceiveSeqNext() throws SQLException;
}
