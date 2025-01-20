package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dao.ReceiveDAO;
import home.staff.dto.ReceiveVO;

public class ReceiveServiceImpl implements ReceiveService{

	private ReceiveDAO receiveDAO;
	
	public ReceiveServiceImpl(ReceiveDAO receiveDAO) {
		this.receiveDAO = receiveDAO;
	}
	
	@Override
	public List<ReceiveVO> list(PageMaker pageMaker) throws SQLException {
		List<ReceiveVO> receiveList = receiveDAO.selectSearchReceiveList(pageMaker);
		
		int totalCount = receiveDAO.selectSearchReceiveListCount(pageMaker);
		
		pageMaker.setTotalCount(totalCount);
		
		return receiveList;
		
	}

	@Override
	public ReceiveVO detail(int rcno) throws SQLException {
		ReceiveVO receive = receiveDAO.selectReceiveByRcno(rcno);
		return receive;
	}

	@Override
	public ReceiveVO getReceive(int rcno) throws SQLException {
		ReceiveVO receive = receiveDAO.selectReceiveByRcno(rcno);
		return receive;
	}


	@Override
	public void regist(ReceiveVO receive) throws SQLException {
		int rcno = receiveDAO.selectReceiveSeqNext();
		receive.setRcno(rcno);
		receiveDAO.insertReceive(receive);
	}

	@Override
	public void modify(ReceiveVO receive) throws SQLException {
		receiveDAO.updateReceive(receive);
		
	}


	@Override
	public void remove(int rcno) throws SQLException {
		receiveDAO.deleteReceive(rcno);	
	}

	@Override
	public ReceiveVO getReceiveByAid(long aid) throws SQLException {
		return receiveDAO.selectReceiveByAid(aid);
	}

	

}
