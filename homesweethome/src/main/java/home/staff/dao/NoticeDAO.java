package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dto.NoticeVO;

public interface NoticeDAO {

	List<NoticeVO> selectSearchNoticeList(PageMaker pageMaker) throws SQLException;
	
	int selectSearchNoticeListCount(PageMaker pageMaker) throws SQLException;
	
	NoticeVO selectNoticeByNno(int nno) throws SQLException;
	
	void insertNotice(NoticeVO notice) throws SQLException;
	void updateNotice(NoticeVO notice) throws SQLException;
	
	//pin 기능 추가
	void updateNoticeStatus(int nno, boolean isNotice);
	
	void deleteNotice(int nno) throws SQLException;
	
	void increaseViewCnt(int nno) throws SQLException;
	
	int selectNoticeSeqNext() throws SQLException;
	
	NoticeVO selectByNoticeEid(String eid) throws SQLException;
	
	//추가: 공지먼저정렬
	List<NoticeVO> selectNoticeListWithPriority(PageMaker pageMaker) throws SQLException;
}
