package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import home.commons.request.AnimalCarePageMaker;
import home.staff.dto.AnimalCareVO;
import home.staff.dto.AnimalVO;
import home.staff.dto.BasicVO;
import home.staff.dto.BreedVO;

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
		return session.selectOne("AnimalCare-Mapper.selectAnimalByEid", eid);
	}

	@Override
	public BasicVO selectBasicListByAid(Long aid) throws SQLException {
		return session.selectOne("AnimalCare-Mapper.selectBasicListByAid", aid);
	}

	@Override
	public void insertAnimal(AnimalVO animal) throws SQLException {
		session.insert("AnimalCare-Mapper.insertAnimal", animal);
		
	}

	@Override
	public void updateAnimal(AnimalVO animal) throws SQLException {
		session.update("AnimalCare-Mapper.updateAnimal", animal);
		
	}

	@Override
	public void deleteAnimal(Long aid) throws SQLException {
		session.delete("AnimalCare-Mapper.deleteAnimal", aid);
	}

	@Override
	public Long selectAnimalSeqNext() throws SQLException {
		return session.selectOne("AnimalCare-Mapper.selectAnimalSeqNext");
	}

	@Override
	public AnimalVO selectAnimalByAid(Long aid) throws SQLException {
		return session.selectOne("AnimalCare-Mapper.selectAnimalByAid", aid);
	}

	@Override
	public List<BreedVO> selectBreed() throws SQLException {
		return session.selectList("AnimalCare-Mapper.selectBreed");
	}

	
}
