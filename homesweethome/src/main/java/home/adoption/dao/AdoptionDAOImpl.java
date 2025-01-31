package home.adoption.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import home.adoption.dto.AdoptionVO;

public class AdoptionDAOImpl implements AdoptionDAO{
	
	private SqlSession session;

	public AdoptionDAOImpl(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<AdoptionVO> selectList() throws SQLException {
		return session.selectList("Adoption-Mapper.selectAdoptionList");
	}
	
	@Override
	public AdoptionVO selectAdoptionByComplete_Date(String complete_Date) throws SQLException {
		return session.selectOne("Adoption-Mapper.selectAdoptionByComplete_Date", complete_Date);
	}
	
}
