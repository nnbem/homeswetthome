package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.AnimalCarePageMaker;
import home.staff.dao.AnimalCareDAO;
import home.staff.dto.AnimalCareVO;
import home.staff.dto.AnimalVO;
import home.staff.dto.BasicVO;

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

	@Override
	public BasicVO basic(Long aid) throws SQLException {
		return animalCareDAO.selectBasicListByAid(aid);
	}

	@Override
	public void registAnimal(AnimalVO animal) throws SQLException {
		Long aid = animalCareDAO.selectAnimalSeqNext();
		animal.setAid(aid);
		animalCareDAO.insertAnimal(animal);
	}

	@Override
	public void modifyAnimal(AnimalVO animal) throws SQLException {
		animalCareDAO.updateAnimal(animal);
	}

	@Override
	public void removeAnimal(Long aid) throws SQLException {
		animalCareDAO.deleteAnimal(aid);
	}

	@Override
	public AnimalVO animalByAid(Long aid) throws SQLException {
		return animalCareDAO.selectAnimalByAid(aid);
	}
	
}
