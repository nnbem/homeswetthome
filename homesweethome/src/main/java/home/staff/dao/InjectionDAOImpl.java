package home.staff.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import home.staff.dto.InjectionVO;

public class InjectionDAOImpl implements InjectionDAO {

	private SqlSession session;
	public InjectionDAOImpl(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public InjectionVO selectInjectionByAid(Long aid) throws SQLException {
		return session.selectOne("Injection-Mapper.selectInjectionByAid", aid);
	}

	@Override
	public void insertInjection(InjectionVO injection) throws SQLException {
		session.insert("Injection-Mapper.insertInjection", injection);
	}

	@Override
	public void updateInjection(InjectionVO injection) throws SQLException {
		session.update("Injection-Mapper.updateInjection", injection);

	}

	@Override
	public void deleteInjection(Long aid) throws SQLException {
		session.delete("Injection-Mapper.deleteInjection", aid);

	}

	@Override
	public int selectTnoSeqNext() throws SQLException {
		return session.selectOne("Injection-Mapper.selectIjnoScqNext");
	}

}
