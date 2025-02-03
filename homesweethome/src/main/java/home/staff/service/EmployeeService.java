package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dto.EmployeeVO;

public interface EmployeeService {
	
	List<EmployeeVO> list(PageMaker pageMaker)throws SQLException;
	
	//사원목록
	List<EmployeeVO> searchList(PageMaker pageMaker)throws SQLException;
	
	//사원등록
	void regist(EmployeeVO Employee) throws SQLException;
	
	//사원수정
	void modify(EmployeeVO Employee) throws SQLException;
	
	//사원삭제
	void remove(String eid) throws SQLException;
	
	//권한수정
	void modifyAuthority(String eid,List<String> authorities) throws SQLException;
	
	//사원조회
	EmployeeVO getEmployee(String eid) throws SQLException;
	
}
