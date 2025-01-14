package home.member.dao;

import java.sql.SQLException;
import java.util.List;

import home.member.dto.MenuMemberVO;

public interface MenuMemberDAO {
	
	 
	List<MenuMemberVO> selectMainMenuMember() throws SQLException;
	
	
	List<MenuMemberVO> selectSubMenuMember(String mCode) throws SQLException;
	
	MenuMemberVO selectMenuMemberByMcode(String mCode) throws SQLException;
	
	MenuMemberVO selectMenuMemberByMname(String mName) throws SQLException;
}
