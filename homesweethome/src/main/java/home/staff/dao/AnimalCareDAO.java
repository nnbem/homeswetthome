package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.AnimalCarePageMaker;
import home.staff.dto.AnimalCareVO;

public interface AnimalCareDAO {
	List<AnimalCareVO> selectSearchAnimalList(AnimalCarePageMaker pageMaker)throws SQLException;
	AnimalCareVO selectAnimalByEid(String eid)throws SQLException;
	int selectSearchAnimalListCount(AnimalCarePageMaker pageMaker)throws SQLException;
	AnimalCareVO selectAnimalNameByEid(String name)throws SQLException;
}
