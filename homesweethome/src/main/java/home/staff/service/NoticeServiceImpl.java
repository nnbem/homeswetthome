package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dao.NoticeDAO;
import home.staff.dto.NoticeVO;

public class NoticeServiceImpl implements NoticeService {
	
	private NoticeDAO noticeDAO;

	public NoticeServiceImpl(NoticeDAO noticeDAO) {
		this.noticeDAO = noticeDAO;
	}

	@Override
	public List<NoticeVO> list(PageMaker pageMaker) throws SQLException {
		List<NoticeVO> noticeList = noticeDAO.selectSearchNoticeList(pageMaker);
		
		int totalCount = noticeDAO.selectSearchNoticeListCount(pageMaker);
		pageMaker.setTotalCount(totalCount);
		
		return noticeList;
	}

	@Override
	public NoticeVO detail(int nno) throws SQLException {
		noticeDAO.increaseViewCnt(nno);
		return noticeDAO.selectNoticeByNno(nno);
	}

	@Override
	public void regist(NoticeVO notice) throws SQLException {
		int nno = noticeDAO.selectNoticeSeqNext();
		notice.setNno(nno);
		noticeDAO.insertNotice(notice);
	}

	@Override
	public void modify(NoticeVO notice) throws SQLException {
		noticeDAO.updateNotice(notice);
	}

	@Override
	public NoticeVO getnotice(int nno) throws SQLException {
		return noticeDAO.selectNoticeByNno(nno);
	}

	@Override
	public void remove(int nno) throws SQLException {
		NoticeVO notice = noticeDAO.selectNoticeByNno(nno);
	}

	@Override
	public NoticeVO getEid(String eid) throws SQLException {
		return noticeDAO.selectByNoticeEid(eid);
	}
	
	
}
