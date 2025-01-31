package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dto.AdoptionDetailVO;
import home.staff.dto.AdoptionVO;

public interface AdoptionService {

	//목록
	List<AdoptionVO> list(PageMaker pageMaker) throws SQLException;
	//상세
	AdoptionVO detail(int ano) throws SQLException;
	
	AdoptionDetailVO getAdoptionDetail(int ano) throws SQLException;
	
	int count(PageMaker pageMaker) throws SQLException;
	
	AdoptionVO getAdoption(int ano) throws SQLException;
	
	AdoptionVO getAdoption(long aid) throws SQLException;
	
	void regist(AdoptionVO adoption) throws SQLException;
	
	void update(AdoptionVO adoption) throws SQLException;
}
