package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dto.EmployeeVO;

public interface EmployeeService {
	List<EmployeeVO> list(PageMaker pageMaker)throws SQLException;
	EmployeeVO getMember(String eid)throws SQLException;
	void regist(EmployeeVO employee)throws SQLException;
	void modify(EmployeeVO employee)throws SQLException;
	void remove(String eid)throws SQLException;
	void modifyAuthority(String eid, List<String> authorities)throws Exception;
	EmployeeVO getEmployee(String eid) throws SQLException;
}
