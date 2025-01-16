package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
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
		int offset = pageMaker.getStartRow()-1;
		int limit = pageMaker.getPerPageNum();
		RowBounds bounds = new RowBounds(offset,limit);
		
		List<NoticeVO> noticeList = session.selectList("Notice-Mapper.selectSearchNoticeList",pageMaker,bounds);
		
		return noticeList;
	}

	@Override
	public int selectSearchNoticeListCount(PageMaker pageMaker) throws SQLException {
		int count = session.selectOne("Notice-Mapper.selectSearchNoticeListCount",pageMaker);
		return count;
	}

	@Override
	public NoticeVO selectNoticeByNno(int nno) throws SQLException {
		NoticeVO notice = session.selectOne("Notice-Mapper.selectNoticeBynno",nno);
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
	
	
	
}
