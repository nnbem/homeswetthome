package home.member.service;

import java.sql.SQLException;
import java.util.List;

import home.member.dto.MypageMenuVO;

public interface MypageMenuService {
	
	List<MypageMenuVO> getsMypageMenuList() throws SQLException;
	
	List<MypageMenuVO> gettSubMypageMenuList(String mCode) throws SQLException;
	
	MypageMenuVO getMypageMenuByTcode(String mCode) throws SQLException;
	
	MypageMenuVO getMypageMenuByTname(String mName) throws SQLException;
	
	MypageMenuVO getMypageMenuByUpcode(String mName) throws SQLException;
}
