package home.adoption.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import home.adoption.dto.AdoptionInfoVO;

public class AdoptionInfoDAOImpl implements AdoptionInfoDAO{
	
	private SqlSession session;

	public AdoptionInfoDAOImpl(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<AdoptionInfoVO> selectList() throws SQLException {
		return session.selectList("Adoption-Mapper.selectAdoptionList");
	}
	
}
