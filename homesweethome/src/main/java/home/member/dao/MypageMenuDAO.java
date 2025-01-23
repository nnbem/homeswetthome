package home.member.dao;

import java.sql.SQLException;
import java.util.List;

import home.member.dto.MypageMenuVO;

public interface MypageMenuDAO {
	
	List<MypageMenuVO> selectMypageMenu() throws SQLException;
	
	List<MypageMenuVO> selectSubMypageMenu(String tCode) throws SQLException;
	
	MypageMenuVO selectMypageMenuByTcode(String tCode) throws SQLException;
	
	MypageMenuVO selectMypageMenuByTname(String tName) throws SQLException;
}
