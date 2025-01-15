package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.AnimalCarePageMaker;
import home.staff.dto.AnimalCareVO;

public interface AnimalCareService {
	List<AnimalCareVO> list(AnimalCarePageMaker pageMaker)throws SQLException;
	AnimalCareVO myAnimalList(String eid)throws SQLException;
	AnimalCareVO getName(String name)throws SQLException;
}
