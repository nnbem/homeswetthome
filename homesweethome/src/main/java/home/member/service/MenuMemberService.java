package home.member.service;

import java.sql.SQLException;
import java.util.List;

import home.member.dto.MenuMemberVO;

public interface MenuMemberService {

	List<MenuMemberVO> getMainMenuMemberList() throws SQLException;
	
	List<MenuMemberVO> getSubMenuMemberList(String mCode) throws SQLException;
	
	MenuMemberVO getMenuMemberByMcode(String mCode) throws SQLException;
	
	MenuMemberVO getMenuMemberByMname(String mName) throws SQLException;
	
	MenuMemberVO getMenuMemberByUpcode(String mName) throws SQLException;
	 
	
}
