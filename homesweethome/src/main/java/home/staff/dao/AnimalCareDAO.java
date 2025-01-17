package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.AnimalCarePageMaker;
import home.staff.dto.AnimalCareVO;
import home.staff.dto.AnimalVO;
import home.staff.dto.BasicVO;

public interface AnimalCareDAO {
	List<AnimalCareVO> selectSearchAnimalList(AnimalCarePageMaker pageMaker)throws SQLException;
	AnimalCareVO selectAnimalByEid(String eid)throws SQLException;
	int selectSearchAnimalListCount(AnimalCarePageMaker pageMaker)throws SQLException;
	AnimalCareVO selectAnimalNameByEid(String name)throws SQLException;
	BasicVO selectBasicListByAid(Long aid)throws SQLException;
	AnimalVO selectAnimalByAid(Long aid)throws SQLException;
	void insertAnimal(AnimalVO animal)throws SQLException;
	void updateAnimal(AnimalVO animal)throws SQLException;
	void deleteAnimal(Long aid)throws SQLException;
	Long selectAnimalSeqNext()throws SQLException;
}
