package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.AnimalCarePageMaker;
import home.staff.dto.AnimalCareVO;
import home.staff.dto.AnimalVO;
import home.staff.dto.BasicVO;

public interface AnimalCareService {
	List<AnimalCareVO> list(AnimalCarePageMaker pageMaker)throws SQLException;
	AnimalCareVO myAnimalList(String eid)throws SQLException;
	AnimalCareVO getName(String name)throws SQLException;
	BasicVO basic(Long aid)throws SQLException;
	AnimalVO animalByAid(Long aid)throws SQLException;
	void registAnimal(AnimalVO animal)throws SQLException;
	void modifyAnimal(AnimalVO animal)throws SQLException;
	void removeAnimal(Long aid)throws SQLException;
}
