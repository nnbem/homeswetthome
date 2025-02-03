package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.AnimalCarePageMaker;
import home.staff.dto.AnimalCareVO;
import home.staff.dto.AnimalImgVO;
import home.staff.dto.AnimalVO;
import home.staff.dto.BasicVO;
import home.staff.dto.BreedVO;
import home.staff.dto.ReceiveVO;

public interface AnimalCareService {
	List<AnimalCareVO> list(AnimalCarePageMaker pageMaker)throws SQLException;
	AnimalCareVO myAnimalList(String eid)throws SQLException;
	AnimalCareVO getName(String name)throws SQLException;
	BasicVO basic(Long aid)throws SQLException;
	AnimalVO animalByAid(Long aid)throws SQLException;
	void registAnimal(AnimalVO animal,ReceiveVO receive)throws SQLException;
	void modifyAnimal(AnimalVO animal,ReceiveVO receive)throws SQLException;
	void removeAnimal(Long aid)throws SQLException;
	Long getAnimalSeq()throws SQLException;
	List<BreedVO> BreedList()throws SQLException;
}
