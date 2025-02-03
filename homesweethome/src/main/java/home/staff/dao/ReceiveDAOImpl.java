package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import home.commons.request.PageMaker;
import home.staff.dto.EmployeeVO;
import home.staff.dto.ReceiveVO;

public class ReceiveDAOImpl implements ReceiveDAO{

	private SqlSession session;
	
	public ReceiveDAOImpl(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<ReceiveVO> selectSearchReceiveList(PageMaker pageMaker) throws SQLException {
		int offset = pageMaker.getStartRow()-1;
		int limit = pageMaker.getPerPageNum();
		RowBounds bounds = new RowBounds(offset,limit);
		
		List<ReceiveVO> receiveList = session.selectList("Receive-Mapper.SelectSearchReceiveList", pageMaker, bounds);
		return receiveList;
	}

	@Override
	public int selectSearchReceiveListCount(PageMaker pageMaker) throws SQLException {
		int count = session.selectOne("Receive-Mapper.selectSearchReceiveListCount",pageMaker);
		return count;
	}

	@Override
	public ReceiveVO selectReceiveByRcno(int rcno) throws SQLException {
		ReceiveVO receive = session.selectOne("Receive-Mapper.selectReceiveByRcno", rcno);
		return receive;
	}
	@Override
	public ReceiveVO selectReceiveByEid(String eid) throws SQLException {
		return session.selectOne("Receive-Mapper.selectReceiveByEid", eid);
	}

	@Override
	public void insertReceive(ReceiveVO receive) throws SQLException {
		session.insert("Receive-Mapper.insertReceive",receive);
		
	}

	@Override
	public void updateReceive(ReceiveVO receive) throws SQLException {
		session.update("Receive-Mapper.updateReceive" , receive);
	}

	@Override
	public void deleteReceive(int rcno) throws SQLException {
		session.delete("Receive-Mapper.deleteReceive", rcno);
	}

	@Override
	public int selectReceiveSeqNext() throws SQLException {
		int rcno = session.selectOne("Receive-Mapper.selectReceiveSeqNext");
		return rcno;
	}

	@Override
	public void insertReceiveInAnimalCare(ReceiveVO receive) throws SQLException {
		session.insert("Receive-Mapper.insertReceiveInAnimalCare", receive);
	}

	@Override
	public int selectRcnoByAid(Long aid) throws SQLException {
		return session.selectOne("Receive-Mapper.selectRcnoByAid", aid);
	}

	@Override
	public void updateReceiveInAnimalCare(ReceiveVO receive) throws SQLException {
		session.update("Receive-Mapper.updateReceiveInAnimalCare", receive);
	}

	@Override
	public int selectReceiveByAid(long aid) throws SQLException {
		return session.selectOne("Receive-Mapper.selectRcnoByAid", aid);
	}


}
