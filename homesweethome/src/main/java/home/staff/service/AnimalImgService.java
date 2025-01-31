package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.staff.dto.AnimalImgVO;

public interface AnimalImgService {
	List<AnimalImgVO> animalImgList(Long aid)throws SQLException;
	AnimalImgVO animalImg(int aino)throws SQLException;
	void registAnimalImg(AnimalImgVO animalImg)throws SQLException;
	void removeAnimalImgOne(int aino)throws SQLException;
	void removeAnimalImgAll(Long aid)throws SQLException;
}
