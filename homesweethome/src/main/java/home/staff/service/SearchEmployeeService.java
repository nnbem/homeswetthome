package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dto.EmployeeVO;

public interface SearchEmployeeService  extends EmployeeService{
	
	List<EmployeeVO> searchList(PageMaker pageMaker) throws SQLException;
	
	EmployeeVO getEmployeeByEid(String eid);
}
