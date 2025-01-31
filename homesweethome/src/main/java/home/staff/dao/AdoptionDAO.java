package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dto.AdoptionDetailVO;
import home.staff.dto.AdoptionVO;

public interface AdoptionDAO {
	
    // 검색 조건에 따른 목록 조회
    List<AdoptionVO> selectSearchAdoptionList(PageMaker pageMaker) throws SQLException;
    // 검색 조건에 따른 결과 개수 조회
    int selectSearchAdoptionListCount(PageMaker pageMaker) throws SQLException;
    // 입양번호로 특정 입양 정보 조회
    AdoptionVO selectAdoptionByAno(int ano) throws SQLException;
    
    AdoptionVO selectAdoptionByAid(long aid) throws SQLException;
    
    int selectNoticeSequenceNextValue() throws SQLException;
    // 입양 신청 등록
    void insertAdoption(AdoptionVO adoption) throws SQLException;
    // 입양 신청 업데이트
    void updateAdoption(AdoptionVO adoption) throws SQLException;
    
    AdoptionDetailVO selectAdoptionDetail(int ano) throws SQLException;
    
}
