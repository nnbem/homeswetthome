package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dao.NoticeDAO;
import home.staff.dto.NoticeVO;

public class NoticeServiceImpl implements NoticeService {
	
	private NoticeDAO noticeDAO;
	private String summernotePath;

	public NoticeServiceImpl(NoticeDAO noticeDAO,String summernotePath) {
		this.noticeDAO = noticeDAO;
		this.summernotePath = summernotePath;
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
	
	//pin 기능 추가
	@Override
	public void updateNoticeStatus(int nno, boolean isNotice) throws SQLException {
		noticeDAO.updateNoticeStatus(nno, isNotice);
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
		noticeDAO.deleteNotice(nno);
	}

	@Override
	public NoticeVO getEid(String eid) throws SQLException {
		return noticeDAO.selectByNoticeEid(eid);
	}

	//공지먼저정렬 추가
	@Override
	public List<NoticeVO> selectNoticeListWithPriority(PageMaker pageMaker) throws SQLException {
		return noticeDAO.selectNoticeListWithPriority(pageMaker);
	}
	
	
}
