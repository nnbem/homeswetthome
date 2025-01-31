package home.adoption.dao;

import java.sql.SQLException;
import java.util.List;

import home.adoption.dto.AdoptionInfoVO;

public interface AdoptionInfoDAO {

	List<AdoptionInfoVO> selectList() throws SQLException;
}