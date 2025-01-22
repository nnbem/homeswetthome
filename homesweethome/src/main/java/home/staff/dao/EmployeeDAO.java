package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dto.EmployeeVO;

public interface EmployeeDAO {
	// 검색된 직원 리스트 조회
	List<EmployeeVO> selectSearchEmployeeList(PageMaker pageMaker)throws SQLException;
	// 검색된 직원 수 조회
	int selectSearchEmployeeListCount(PageMaker pageMaker)throws SQLException;
	// 모든 직원 리스트 조회
	List<EmployeeVO> selectEmployeeList()throws SQLException;
	// 특정 직원 조회
	EmployeeVO selectEmployeeByEid(String eid)throws SQLException;
	// 특정 직원의 권한 리스트 조회
	List<String> selectEmployeeAuthoritiesByEid(String eid)throws SQLException;
	// 직원 권한 삽입
	void insertEmployeeAuthorities(String eid, String authority)throws SQLException;
	// 특정 직원의 모든 권한 삭제
	void deleteAllAuthorityByEid(String eid)throws SQLException;
	// 직원 삽입
	void insertEmployee(EmployeeVO employee)throws SQLException;
	// 직원 정보 수정
	void updateEmployee(EmployeeVO employee)throws SQLException;
	// 직원 삭제
	void deleteEmployee(String eid)throws SQLException;
	// 추가적인 직원 리스트 조회 (필요한 경우)
	List<EmployeeVO> selectList(PageMaker pageMaker) throws SQLException;
}
