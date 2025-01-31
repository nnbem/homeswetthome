package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dto.ReserveDetailVO;
import home.staff.dto.ReserveVO;

public interface ReserveDAO {
	
	List<ReserveVO> selectSearchReserveList(PageMaker pageMaker) throws SQLException;
	
	int selectSearchReserveListCount(PageMaker pageMaker) throws SQLException;
	
	ReserveVO selectReserveByRsno(int rsno) throws SQLException;
	ReserveVO selectReserveByMid(String mid) throws SQLException;
	
	int selectReserveSeqNext() throws SQLException;
	
	void insertReserve(ReserveVO reserve) throws SQLException;
	void updateReserve(ReserveVO reserve) throws SQLException;
	void cancelReserve(ReserveVO reserve) throws SQLException;
	
	ReserveDetailVO selectReserveDetail(int rsno) throws SQLException;
}
