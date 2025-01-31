package home.adoption.dao;

import java.sql.SQLException;
import java.util.List;

import home.adoption.dto.AdoptionVO;

public interface AdoptionDAO {

	List<AdoptionVO> selectList() throws SQLException;
	
	AdoptionVO selectAdoptionByComplete_Date(String complete_Date) throws SQLException;
}
