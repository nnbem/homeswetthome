package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dao.ReserveDAO;
import home.staff.dto.ReserveDetailVO;
import home.staff.dto.ReserveVO;

public class ReserveServiceImpl implements ReserveService{
	
	private ReserveDAO reserveDAO;
	
	public ReserveServiceImpl(ReserveDAO reserveDAO) {
		this.reserveDAO = reserveDAO;
	}

	@Override
	public List<ReserveVO> list(PageMaker pageMaker) throws SQLException {
		int totalCount = reserveDAO.selectSearchReserveListCount(pageMaker);
		pageMaker.setTotalCount(totalCount);
		
		return reserveDAO.selectSearchReserveList(pageMaker);
	}

	@Override
	public ReserveVO detail(int rsno) throws SQLException {
		return reserveDAO.selectReserveByRsno(rsno);
	}

	@Override
	public int count(PageMaker pageMaker) throws SQLException {
		return reserveDAO.selectSearchReserveListCount(pageMaker);
	}


	@Override
	public ReserveVO getReserveByMid(String mid) throws SQLException {
		return reserveDAO.selectReserveByMid(mid);
	}

	@Override
	public void regist(ReserveVO reserve) throws SQLException {
		int rsno = reserveDAO.selectReserveSeqNext();
		
		reserve.setRsno(rsno);
		reserveDAO.insertReserve(reserve);
	}

	@Override
	public void update(ReserveVO reserve) throws SQLException {
		reserveDAO.updateReserve(reserve);
	}

	@Override
	public void cancel(ReserveVO reserve) throws SQLException {
		reserveDAO.updateReserve(reserve);
	}

	@Override
	public ReserveVO getReserve(int rsno) throws SQLException {
		return reserveDAO.selectReserveByRsno(rsno);
	}

	@Override
	public ReserveDetailVO getReserveDetail(int rsno) throws SQLException {
		return reserveDAO.selectReserveDetail(rsno);
	}

}
