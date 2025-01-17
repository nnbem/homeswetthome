package home.member.dao;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.member.dto.SharingVO;

public interface SharingDAO {

	List<SharingVO> selectSearchSharingList(PageMaker pageMaker) throws SQLException;
	
	int selectSearchSharingListCount(PageMaker pageMaker) throws SQLException;
	
	SharingVO selectSharingBySno(int sno) throws SQLException;
	
	void insertSharing(SharingVO sharing) throws SQLException;
	void updateSharing(SharingVO sharing) throws SQLException;
	void deleteSharing(int sno) throws SQLException;
	
	void increaseViewCnt(int sno) throws SQLException;
	
	int selectSharingSeqNext() throws SQLException;
	
	SharingVO selectBySharingMid(String mid) throws SQLException;
	
}
