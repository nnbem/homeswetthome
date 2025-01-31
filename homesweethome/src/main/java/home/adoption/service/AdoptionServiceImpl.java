package home.adoption.service;

import java.sql.SQLException;
import java.util.List;

import home.adoption.dao.AdoptionDAO;
import home.adoption.dto.AdoptionVO;
import home.commons.request.PageMaker;

public class AdoptionServiceImpl implements AdoptionService{

	private AdoptionDAO adoptionDAO;

	public AdoptionServiceImpl(AdoptionDAO adoptionDAO) {
		this.adoptionDAO = adoptionDAO;
	}

	@Override
	public List<AdoptionVO> list(PageMaker pageMaker) throws SQLException {
		return adoptionDAO.selectList();
	}
	
	@Override
	public AdoptionVO getAdoption(String complete_Date) throws SQLException {
		return adoptionDAO.selectAdoptionByComplete_Date(complete_Date);
	}

	
	
	
}
