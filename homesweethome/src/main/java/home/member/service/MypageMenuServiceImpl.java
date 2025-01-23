package home.member.service;

import java.sql.SQLException;
import java.util.List;

import home.member.dao.MypageMenuDAO;
import home.member.dto.MypageMenuVO;

public class MypageMenuServiceImpl implements MypageMenuService{

	private MypageMenuDAO mypageMenuDAO;
	
	public MypageMenuServiceImpl(MypageMenuDAO mypageMenuDAO) {
		this.mypageMenuDAO = mypageMenuDAO;
	}
	@Override
	public List<MypageMenuVO> getsMypageMenuList() throws SQLException {
		return mypageMenuDAO.selectMypageMenu();
	}

	@Override
	public List<MypageMenuVO> gettSubMypageMenuList(String mCode) throws SQLException {
		return mypageMenuDAO.selectSubMypageMenu(mCode);
	}

	@Override
	public MypageMenuVO getMypageMenuByTcode(String mCode) throws SQLException {
		return mypageMenuDAO.selectMypageMenuByTcode(mCode);
	}

	@Override
	public MypageMenuVO getMypageMenuByTname(String mName) throws SQLException {
		return mypageMenuDAO.selectMypageMenuByTname(mName);
	}

	@Override
	public MypageMenuVO getMypageMenuByUpcode(String mName) throws SQLException {
		return null;
	}

}
