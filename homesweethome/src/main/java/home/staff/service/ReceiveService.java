package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dto.ReceiveVO;

public interface ReceiveService {
	
	// 목록 조회
    List<ReceiveVO> list(PageMaker pageMaker) throws SQLException;

    // 상세 조회 (rcno로 Receive 데이터 조회)
    ReceiveVO detail(int rcno) throws SQLException;

    // 검색 조건에 맞는 데이터 개수 조회
    int count(PageMaker pageMaker) throws SQLException;

    // 수정할 데이터 조회 (rcno 기준)
    ReceiveVO getReceive(int rcno) throws SQLException;

    // aid로 Receive 데이터 조회
    int getReceiveByAid(long aid) throws SQLException;

    // Receive 데이터 수정
    void update(ReceiveVO receive) throws SQLException;

    // Receive 데이터 등록
    void regist(ReceiveVO receive) throws SQLException;

    // Receive 데이터 삭제
    void remove(int rcno) throws SQLException;
    
    int getRcnoByAid(long aid) throws SQLException;
    ReceiveVO getReceiveByEid(String eid) throws SQLException;
    
}
