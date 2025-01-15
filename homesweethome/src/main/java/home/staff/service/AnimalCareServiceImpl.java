package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.AnimalCarePageMaker;
import home.staff.dao.AnimalCareDAO;
import home.staff.dto.AnimalCareVO;

public class AnimalCareServiceImpl implements AnimalCareService {

	private AnimalCareDAO animalCareDAO;
	public AnimalCareServiceImpl(AnimalCareDAO animalCareDAO) {
		this.animalCareDAO = animalCareDAO;
	}
	
	@Override
	public List<AnimalCareVO> list(AnimalCarePageMaker pageMaker) throws SQLException {
		
		int totalCount = animalCareDAO.selectSearchAnimalListCount(pageMaker);
		pageMaker.setTotalCount(totalCount);
		
		return animalCareDAO.selectSearchAnimalList(pageMaker);
	}


	@Override
	public AnimalCareVO getName(String name) throws SQLException {
		return animalCareDAO.selectAnimalNameByEid(name);
	}

	@Override
	public AnimalCareVO myAnimalList(String eid) throws SQLException {
		return animalCareDAO.selectAnimalByEid(eid);
	}


}
