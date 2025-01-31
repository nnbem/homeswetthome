package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import home.staff.dto.AnimalImgVO;

public interface AnimalImgDAO {
	List<AnimalImgVO> selectAnimalImgByAid(Long aid)throws SQLException;
	AnimalImgVO selectAnimalImgByAino(int aino)throws SQLException;
	void insertAnimalImg(AnimalImgVO animalImg)throws SQLException;
	void deleteAnimalImgByAino(int aino)throws SQLException;
	void deleteAnimalimgByAid(Long aid)throws SQLException;
}
