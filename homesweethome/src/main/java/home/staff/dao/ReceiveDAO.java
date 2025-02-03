package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dto.EmployeeVO;
import home.staff.dto.ReceiveVO;

public interface ReceiveDAO {

    // 검색 조건에 맞는 목록 조회
    List<ReceiveVO> selectSearchReceiveList(PageMaker pageMaker) throws SQLException;
    // 검색 조건에 맞는 데이터 개수 조회
    int selectSearchReceiveListCount(PageMaker pageMaker) throws SQLException;
    // rcno로 Receive 정보 조회
    ReceiveVO selectReceiveByRcno(int rcno) throws SQLException;
    ReceiveVO selectReceiveByEid(String eid)throws SQLException;
    // Receive 데이터 추가
    void insertReceive(ReceiveVO receive) throws SQLException;
    // Receive 데이터 업데이트
    void updateReceive(ReceiveVO receive) throws SQLException;
    // Receive 데이터 삭제
    void deleteReceive(int rcno) throws SQLException;
    // 시퀀스에서 다음 값 조회
    int selectReceiveSeqNext() throws SQLException;
    // aid로 Receive 데이터 조회
    int selectReceiveByAid(long aid) throws SQLException;
    
    void insertReceiveInAnimalCare(ReceiveVO receive) throws SQLException;
    int selectRcnoByAid(Long aid) throws SQLException;
	void updateReceiveInAnimalCare(ReceiveVO receive)throws SQLException;
	
}
