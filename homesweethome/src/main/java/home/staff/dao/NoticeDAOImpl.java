package home.staff.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import home.commons.request.PageMaker;
import home.staff.dto.NoticeVO;

public class NoticeDAOImpl implements NoticeDAO {

	private SqlSession session;

	public NoticeDAOImpl(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<NoticeVO> selectSearchNoticeList(PageMaker pageMaker) throws SQLException {
		int startRow = pageMaker.getStartRow();
		int endRow = startRow + pageMaker.getPerPageNum()-1;
		
		
		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", pageMaker.getSearchType());
		dataParam.put("keyword", pageMaker.getKeyword());

		
		List<NoticeVO> pinnedNotice = session.selectList("Notice-Mapper.selectPinnedNotice");
		
		List<NoticeVO> noticeList = session.selectList("Notice-Mapper.selectSearchNoticeList", dataParam);
		
		List<NoticeVO> finalNotice = new ArrayList<>();
		finalNotice.addAll(pinnedNotice);
		finalNotice.addAll(noticeList);
		
		return finalNotice;
	}

	@Override
	public int selectSearchNoticeListCount(PageMaker pageMaker) throws SQLException {
		int count = session.selectOne("Notice-Mapper.selectSearchNoticeListCount",pageMaker);
		return count;
	}

	@Override
	public NoticeVO selectNoticeByNno(int nno) throws SQLException {
		NoticeVO notice = session.selectOne("Notice-Mapper.selectNoticeByNno",nno);
		return notice;
	}

	@Override
	public void insertNotice(NoticeVO notice) throws SQLException {
		session.insert("Notice-Mapper.insertNotice", notice);
	}

	@Override
	public void updateNotice(NoticeVO notice) throws SQLException {
		session.update("Notice-Mapper.updateNotice", notice);
	}
	
	//pin 기능 추가
	@Override
	public void updateNoticeStatus(int nno, boolean isNotice) {
		Map<String, Object> params = new HashMap<>();
        params.put("nno", nno);
        params.put("pin", isNotice ? 1 : 0); // 공지 = 1, 일반 = 0

        session.update("Notice-Mapper.updateNoticeStatus", params);
	}

	@Override
	public void deleteNotice(int nno) throws SQLException {
		session.delete("Notice-Mapper.deleteNotice",nno);
	}

	@Override
	public void increaseViewCnt(int nno) throws SQLException {
		session.update("Notice-Mapper.increaseViewCnt",nno);
	}

	@Override
	public int selectNoticeSeqNext() throws SQLException {
		int nno = session.selectOne("Notice-Mapper.selectNoticeSeqNext");
		return nno;
	}

	@Override
	public NoticeVO selectByNoticeEid(String eid) throws SQLException {
		NoticeVO notice = session.selectOne("Notice-Mapper.selectByNoticeEid", eid);
		return notice;
	}
	
	//추가
	@Override
	public List<NoticeVO> selectNoticeListWithPriority(PageMaker pageMaker) throws SQLException {
		return session.selectList("Notice-Mapper.selectNoticeListWithPriority", pageMaker);
	}
}
