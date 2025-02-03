package home.member.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.member.dao.SuitDAO;
import home.member.dto.SuitVO;

public class SuitServiceImpl implements SuitService{

	private SuitDAO suitDAO;
	
	public SuitServiceImpl(SuitDAO suitDAO) {
		this.suitDAO = suitDAO;
	}
	
	@Override
	public List<SuitVO> list(PageMaker pageMaker) throws SQLException {
		return suitDAO.selectList(pageMaker);
	}

	@Override
	public List<SuitVO> searchList(PageMaker pageMaker) throws SQLException {
		
		int totalCount = suitDAO.selectSearchSuitListCount(pageMaker);
		pageMaker.setTotalCount(totalCount);
		
		return suitDAO.seleceSearchSuitList(pageMaker);
	}

	@Override
	public void regist(SuitVO suit) throws SQLException {
		suitDAO.insertSuit(suit);
	}

	@Override
	public void update(SuitVO suit) throws SQLException {
		suitDAO.updateSuit(suit);
	}

	@Override
	public SuitVO getSuit(String mid) throws SQLException {
		return suitDAO.selectSuitByMid(mid);
	}

}
