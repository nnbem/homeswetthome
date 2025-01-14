package home.commons.service;

import java.sql.SQLException;
import java.util.List;

import home.member.dao.MenuMemberDAO;
import home.member.dto.MenuMemberVO;

public class MenuMemberServiceImpl implements MenuMemberService{
	
	private MenuMemberDAO menuMemberDAO;
	public MenuMemberServiceImpl(MenuMemberDAO menuMemberDAO) {
		this.menuMemberDAO = menuMemberDAO;
	}

	@Override
	public List<MenuMemberVO> getMainMenuMemberList() throws SQLException {
		return menuMemberDAO.selectMainMenuMember();
	}

	@Override
	public List<MenuMemberVO> getSubMenuMemberList(String mCode) throws SQLException {
		return menuMemberDAO.selectSubMenuMember(mCode);
	}

	@Override
	public MenuMemberVO getMenuMemberByMcode(String mCode) throws SQLException {
		return menuMemberDAO.selectMenuMemberByMcode(mCode);
	}

	@Override
	public MenuMemberVO getMenuMemberByMname(String mName) throws SQLException {
		return menuMemberDAO.selectMenuMemberByMname(mName);
	}
	

}