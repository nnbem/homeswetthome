package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import home.commons.request.PageMaker;
import home.staff.dto.ReserveDetailVO;
import home.staff.dto.ReserveVO;

public class ReserveDAOImpl implements ReserveDAO{
	
	private SqlSession session;
	
	public ReserveDAOImpl(SqlSession session) {
		this.session = session;
	}
	@Override
	public List<ReserveVO> selectSearchReserveList(PageMaker pageMaker) throws SQLException {
		int offset = pageMaker.getStartRow()-1;
		int limit = pageMaker.getPerPageNum();
		RowBounds bounds = new RowBounds(offset, limit);
		
		List<ReserveVO> reserveList = session.selectList("Reserve-Mapper.selectSearchReserveList", pageMaker, bounds);
		return reserveList;
	}

	@Override
	public int selectSearchReserveListCount(PageMaker pageMaker) throws SQLException {
		int count = session.selectOne("Reserve-Mapper.selectSearchReserveListCount", pageMaker);
		return count;
	}

	@Override
	public int selectReserveSeqNext() throws SQLException {
		return session.selectOne("Reserve-Mapper.selectReserveSeqNext");
	}

	@Override
	public void insertReserve(ReserveVO reserve) throws SQLException {
		session.insert("Reserve-Mapper.insertReserve", reserve);
	}

	@Override
	public void updateReserve(ReserveVO reserve) throws SQLException {
		session.update("Reserve-Mapper.updateReserve", reserve);
	}

	@Override
	public void cancelReserve(ReserveVO reserve) throws SQLException {
		session.update("Reserve-Mapper.cancelReserve", reserve);
	}
	@Override
	public ReserveVO selectReserveByRsno(int rsno) throws SQLException {
		ReserveVO reserve = session.selectOne("Reserve-Mapper.selectReserveByRsno", rsno);
		return reserve;
	}
	@Override
	public ReserveVO selectReserveByMid(String mid) throws SQLException {
		ReserveVO reserve = session.selectOne("Reserve-Mapper.selectReserveByMid", mid);
		return reserve;
	}
	@Override
	public ReserveDetailVO selectReserveDetail(int rsno) throws SQLException {
		return session.selectOne("ReserveDetail-Mapper", rsno);
	}


}
