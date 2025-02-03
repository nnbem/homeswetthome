package home.member.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.member.dto.SuitVO;

public interface SuitService {
	
	List<SuitVO> list(PageMaker pageMaker) throws SQLException;
	
	List<SuitVO> searchList(PageMaker pageMaker) throws SQLException;
	
	void regist(SuitVO suit) throws SQLException;
	void update(SuitVO suit) throws SQLException;
	
	SuitVO getSuit(String mid) throws SQLException;
}
