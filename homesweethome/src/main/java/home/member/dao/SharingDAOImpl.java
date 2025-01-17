package home.member.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import home.commons.request.PageMaker;
import home.member.dto.SharingVO;

public class SharingDAOImpl implements SharingDAO {

	private SqlSession session;

	public SharingDAOImpl(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<SharingVO> selectSearchSharingList(PageMaker pageMaker) throws SQLException {
		int startRow = pageMaker.getStartRow();
		int endRow = startRow + pageMaker.getPerPageNum()-1;
		
		
		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", pageMaker.getSearchType());
		dataParam.put("keyword", pageMaker.getKeyword());
		
		List<SharingVO> sharingList = session.selectList("Sharing-Mapper.selectSearchSharingList", dataParam);
		
		return sharingList;
	}

	@Override
	public int selectSearchSharingListCount(PageMaker pageMaker) throws SQLException {
		int count = session.selectOne("Sharing-Mapper.selectSearchSharingListCount", pageMaker);
		return count;
	}

	@Override
	public SharingVO selectSharingBySno(int sno) throws SQLException {
		SharingVO sharing = session.selectOne("Sharing-Mapper.selectSharingBySno", sno);
		return null;
	}

	@Override
	public void insertSharing(SharingVO sharing) throws SQLException {
		session.insert("Sharing-Mapper.insertSharing", sharing);
	}

	@Override
	public void updateSharing(SharingVO sharing) throws SQLException {
		session.update("Sharing-Mapper.updateSharing", sharing);
	}

	@Override
	public void deleteSharing(int sno) throws SQLException {
		session.delete("Sharing-Mapper.deleteSharing", session);
	}

	@Override
	public void increaseViewCnt(int sno) throws SQLException {
		session.update("Sharing-Mapper.increaseViewCnt", sno);
	}

	@Override
	public int selectSharingSeqNext() throws SQLException {
		int sno = session.selectOne("Sharing-Mapper.selectSharingSeqNext");
		return sno;
	}

	@Override
	public SharingVO selectBySharingMid(String mid) throws SQLException {
		SharingVO sharing = session.selectOne("Sharing-Mapper.selectBySharingMid", mid);
		return sharing;
	}
	
	
}
