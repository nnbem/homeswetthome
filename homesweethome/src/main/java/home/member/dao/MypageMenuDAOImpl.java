package home.member.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import home.member.dto.MypageMenuVO;

public class MypageMenuDAOImpl implements MypageMenuDAO{
	
	private SqlSession session;
	
	public MypageMenuDAOImpl(SqlSession session) {
		this.session = session;
	}
	@Override
	public List<MypageMenuVO> selectMypageMenu() throws SQLException {
		return session.selectList("MypageMenu-Mapper.selectMypageMenu");
	}

	@Override
	public List<MypageMenuVO> selectSubMypageMenu(String tCode) throws SQLException {
		return session.selectList("MypageMenu-Mapper.selectSubMypageMenu", tCode);
	}

	@Override
	public MypageMenuVO selectMypageMenuByTcode(String tCode) throws SQLException {
		return session.selectOne("MypageMenu-Mapper.selectMypageMenuByTcode", tCode);
	}

	@Override
	public MypageMenuVO selectMypageMenuByTname(String tName) throws SQLException {
		return session.selectOne("MypageMenu-Mapper.selectMypageMenuByTname");
	}

}
