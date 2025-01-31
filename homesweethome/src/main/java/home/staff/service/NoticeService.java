package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dto.NoticeVO;

public interface NoticeService {

	List<NoticeVO> list(PageMaker pageMaker) throws SQLException;
		
	NoticeVO detail(int nno) throws SQLException;
		
	void regist(NoticeVO notice)throws SQLException;
	
	//pin 기능 추가
	void updateNoticeStatus(int nno, boolean isNotice) throws SQLException;
	
	void modify(NoticeVO notice)throws SQLException;
	
	NoticeVO getnotice(int nno)throws SQLException;
	
	void remove(int nno)throws SQLException;
	
	NoticeVO getEid(String eid)throws SQLException;
	
	//공지먼저정렬 추가
	List<NoticeVO> selectNoticeListWithPriority(PageMaker pageMaker) throws SQLException;
}
