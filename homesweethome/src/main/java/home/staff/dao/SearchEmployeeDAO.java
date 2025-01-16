package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dto.EmployeeVO;

public interface SearchEmployeeDAO extends EmployeeDAO{

	List<EmployeeVO> selectSearchEmployeeList(PageMaker pageMaker) throws SQLException;
	
	EmployeeVO getEmployeeByEid(String eid);
	
	int selectSearchEmployeeListCount(PageMaker pageMaker) throws SQLException;
}
