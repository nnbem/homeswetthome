package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import home.staff.dto.AnimalImgVO;

public class AnimalImgDAOImpl implements AnimalImgDAO {
	
	private SqlSession session;
	public AnimalImgDAOImpl(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<AnimalImgVO> selectAnimalImgByAid(Long aid) throws SQLException {
		return session.selectList("AnimalImg-Mapper.selectAnimalImgByAid", aid);
	}

	@Override
	public AnimalImgVO selectAnimalImgByAino(int aino) throws SQLException {
		return session.selectOne("AnimalImg-Mapper.selectAnimalImgByAino", aino);
	}

	@Override
	public void insertAnimalImg(AnimalImgVO animalImg) throws SQLException {
		session.insert("AnimalImg-Mapper.insertAnimalImg", animalImg);
	}

	@Override
	public void deleteAnimalImgByAino(int aino) throws SQLException {
		session.delete("AnimalImg-Mapper.deleteAnimalImgByAino", aino);
	}

	@Override
	public void deleteAnimalimgByAid(Long aid) throws SQLException {
		session.delete("AnimalImg-Mapper.deleteAnimalimgByAid", aid);
	}

}
