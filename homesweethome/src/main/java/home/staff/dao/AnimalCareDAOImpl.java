package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import home.commons.request.AnimalCarePageMaker;
import home.staff.dto.AnimalCareVO;

public class AnimalCareDAOImpl implements AnimalCareDAO {
	
	private SqlSession session;
	public AnimalCareDAOImpl(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<AnimalCareVO> selectSearchAnimalList(AnimalCarePageMaker pageMaker) throws SQLException {
		int offset = pageMaker.getStartRow()-1;
		int limit = pageMaker.getPerPageNum();
		RowBounds bounds = new RowBounds(offset, limit);
		
		List<AnimalCareVO> AnimalCareList = session.selectList("AnimalCare-Mapper.selectSearchAnimalList", pageMaker, bounds);
		
		return AnimalCareList;
	}

	@Override
	public int selectSearchAnimalListCount(AnimalCarePageMaker pageMaker) throws SQLException {
		return session.selectOne("AnimalCare-Mapper.selectSearchAnimalListCount", pageMaker);
	}


	@Override
	public AnimalCareVO selectAnimalNameByEid(String name) throws SQLException {
		return session.selectOne("AnimalCare-Mapper.selectAnimalNameByEid", name);
	}

	@Override
	public AnimalCareVO selectAnimalByEid(String eid) throws SQLException {
		return session.selectOne("selectAnimalByEid", eid);
	}

}
