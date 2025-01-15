package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dto.EmployeeVO;

public interface EmployeeDAO {
	List<EmployeeVO> selectSearchEmployeeList(PageMaker pageMaker)throws SQLException;
	int selectSearchEmployeeListCount(PageMaker pageMaker)throws SQLException;
	List<String> selectEmployeeAuthoritiesByEid(String eid)throws SQLException;
	void insertEmployeeAuthorities(String eid, String authority)throws SQLException;
	void deleteAllAuthorityByEid(String eid)throws SQLException;
	List<EmployeeVO> selectEmployeeList()throws SQLException;
	EmployeeVO selectEmployeeByEid(String eid)throws SQLException;
	void insertEmployee(EmployeeVO employee)throws SQLException;
	void updateEmployee(EmployeeVO employee)throws SQLException;
	void deleteEmployee(String eid)throws SQLException;
	
}
