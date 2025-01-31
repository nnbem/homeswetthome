package home.adoption.service;

import java.sql.SQLException;
import java.util.List;

import home.adoption.dao.AdoptionInfoDAO;
import home.adoption.dto.AdoptionInfoVO;
import home.commons.request.PageMaker;

public class AdoptionInfoServiceImpl implements AdoptionInfoService{

	private AdoptionInfoDAO adoptionDAO;

	public AdoptionInfoServiceImpl(AdoptionInfoDAO adoptionDAO) {
		this.adoptionDAO = adoptionDAO;
	}

	@Override
	public List<AdoptionInfoVO> getAdoptlist(String loginUser) throws SQLException {
		return adoptionDAO.selectList();
	}
	
}
