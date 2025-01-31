package home.adoption.service;

import java.sql.SQLException;
import java.util.List;

import home.adoption.dto.AdoptionVO;
import home.commons.request.PageMaker;

public interface AdoptionService {

	List<AdoptionVO> list(PageMaker pageMaker) throws SQLException;
	
	AdoptionVO getAdoption(String complete_Date) throws SQLException;
}
