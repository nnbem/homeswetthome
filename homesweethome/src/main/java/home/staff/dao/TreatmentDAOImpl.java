package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import home.commons.request.TreatmentPageMaker;
import home.staff.dto.TreatmentVO;

public class TreatmentDAOImpl implements TreatmentDAO {

	private SqlSession session;
	public TreatmentDAOImpl(SqlSession Session) {
		this.session = Session;
	}
	
	@Override
	public List<TreatmentVO> selectSearchTreatmentList(TreatmentPageMaker pagemaker) throws SQLException {
		int offset=pagemaker.getStartRow()-1;
		int limit = pagemaker.getPerPageNum();
		
		RowBounds bouds = new RowBounds(offset,limit);

		return session.selectList("Treatment-Mapper.selectSearchTreatmentList", pagemaker, bouds);
	}

	@Override
	public TreatmentVO selectTreatmentBytno(int tno) throws SQLException {
		return session.selectOne("Treatment-Mapper.selectTreatmentBytno", tno);
	}

	@Override
	public void insertTreatment(TreatmentVO treatment) throws SQLException {
		session.insert("Treatment-Mapper.insertTreatment", treatment);
	}

	@Override
	public void updateTreatment(TreatmentVO treatment) throws SQLException {
		session.update("Treatment-Mapper.updateTreatment", treatment);
	}

	@Override
	public void deleteTreatment(int tno) throws SQLException {
		session.delete("Treatment-Mapper.deleteTreatment", tno);
	}

	@Override
	public int selectSearchTreatmentCount(TreatmentPageMaker pagemaker) throws SQLException {
		return session.selectOne("Treatment-Mapper.selectSearchTreatmentCount", pagemaker);
	}

	@Override
	public int selectTnoSeqNext() throws SQLException {
		return session.selectOne("Treatment-Mapper.selectTnoSeqNext");
	}

	@Override
	public List<TreatmentVO> selectTreatmentListByAid(Long aid) throws SQLException {
		return session.selectList("Treatment-Mapper.selectTreatmentListByAid", aid);
	}

}
