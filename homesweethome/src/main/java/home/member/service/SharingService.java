package home.member.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.member.dto.SharingVO;

public interface SharingService {

	List<SharingVO> list(PageMaker pageMaker) throws SQLException;
	
	SharingVO detail(int sno) throws SQLException;
		
	void regist(SharingVO sharing)throws SQLException;
	
	void modify(SharingVO sharing)throws SQLException;
	
	SharingVO getsharing(int sno)throws SQLException;
	
	void remove(int sno)throws SQLException;
	
	SharingVO getMid(String mid)throws SQLException;
}
