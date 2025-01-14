package home.member.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import home.member.dto.MenuMemberVO;

public class MenuMemberDAOImpl implements MenuMemberDAO{

	private SqlSession session;
	
	public MenuMemberDAOImpl(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<MenuMemberVO> selectMainMenuMember() throws SQLException {
		return session.selectList("MenuMember-Mapper.selectMainMenuMember");
	}

	@Override
	public List<MenuMemberVO> selectSubMenuMember(String mCode) throws SQLException {
		return session.selectList("MenuMember-Mapper.selectSubMenuMember",mCode);
	}

	@Override
	public MenuMemberVO selectMenuMemberByMcode(String mCode) throws SQLException {
		return session.selectOne("MenuMember-Mapper.selectMenuMemberByMcode", mCode);
	}

	@Override
	public MenuMemberVO selectMenuMemberByMname(String mName) throws SQLException {
		return session.selectOne("MenuMember-Mapper.selectMenuMemberByMname", mName);
	}


}
