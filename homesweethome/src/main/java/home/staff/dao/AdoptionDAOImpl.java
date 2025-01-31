package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import home.commons.request.PageMaker;
import home.staff.dto.AdoptionDetailVO;
import home.staff.dto.AdoptionVO;

public class AdoptionDAOImpl implements AdoptionDAO{
	
	private SqlSession session;
	
	public AdoptionDAOImpl(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<AdoptionVO> selectSearchAdoptionList(PageMaker pageMaker) throws SQLException {
		int offset = pageMaker.getStartRow()-1;
		int limit = pageMaker.getPerPageNum();
		RowBounds bounds = new RowBounds(offset, limit);
		
		List<AdoptionVO> adoptionList = session.selectList("Adoption-Mapper.selectSearchAdoptionList", pageMaker, bounds);
		return adoptionList;
	}

	@Override
	public int selectSearchAdoptionListCount(PageMaker pageMaker) throws SQLException {
		int count = session.selectOne("Adoption-Mapper.selectSearchAdoptionListCount", pageMaker);
		return count;
	}

	@Override
	public AdoptionVO selectAdoptionByAno(int ano) throws SQLException {
		AdoptionVO adoption = session.selectOne("Adoption-Mapper.selectAdoptionByAno", ano);
		return adoption;
	}

	@Override
	public void insertAdoption(AdoptionVO adoption) throws SQLException {
		session.insert("Adoption-Mapper.insertAdoption", adoption);
	}

	@Override
	public void updateAdoption(AdoptionVO adoption) throws SQLException {
		session.update("Adoption-Mapper.updateAdoption", adoption);
	}

	@Override
	public AdoptionVO selectAdoptionByAid(long aid) throws SQLException {
		AdoptionVO adoption = session.selectOne("Adoption-Mapper.selectAdoptionByAid", aid);
		return adoption;
	}

	@Override
	public int selectNoticeSequenceNextValue() throws SQLException {
		return session.selectOne("Adoption-Mapper.selectNoticeSequenceNextValue");
	}

	@Override
	public AdoptionDetailVO selectAdoptionDetail(int ano) throws SQLException {
		return session.selectOne("AdoptionDetail-Mapper.selectAdoptionDetail", ano);
	}
	
	

}
