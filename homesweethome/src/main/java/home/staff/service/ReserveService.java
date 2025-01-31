package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dto.ReserveDetailVO;
import home.staff.dto.ReserveVO;

public interface ReserveService {
	
	List<ReserveVO> list(PageMaker pageMaker) throws SQLException;
	
	ReserveVO detail(int rsno) throws SQLException;
	ReserveDetailVO getReserveDetail(int rsno) throws SQLException;
	
	ReserveVO getReserve(int rsno) throws SQLException;
	ReserveVO getReserveByMid(String mid) throws SQLException;
	
	
	int count(PageMaker pageMaker) throws SQLException;
	
	void regist(ReserveVO reserve) throws SQLException;
	void update(ReserveVO reserve) throws SQLException;
	void cancel(ReserveVO reserve) throws SQLException;

}
