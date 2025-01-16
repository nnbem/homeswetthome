package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import home.commons.request.PageMaker;
import home.staff.dao.EmployeeDAO;
import home.staff.dao.SearchEmployeeDAO;
import home.staff.dto.EmployeeVO;

public class SearchEmployeeServiceImpl extends EmployeeServiceImpl implements SearchEmployeeService{

	private SearchEmployeeDAO searchEmployeeDAO;

	@Autowired
	public SearchEmployeeServiceImpl(EmployeeDAO employeeDAO, SearchEmployeeDAO searchEmployeeDAO) {
		super(employeeDAO);
		this.searchEmployeeDAO = searchEmployeeDAO;
	}

	@Override
	public List<EmployeeVO> searchList(PageMaker pageMaker) throws SQLException {
		List<EmployeeVO> employeeList = searchEmployeeDAO.selectSearchEmployeeList(pageMaker);
		
		int totalCount = searchEmployeeDAO.selectSearchEmployeeListCount(pageMaker);
		pageMaker.setTotalCount(totalCount);
		
		return employeeList;
	}

	@Override
	public EmployeeVO getEmployeeByEid(String eid) {
		return searchEmployeeDAO.getEmployeeByEid(eid);
	}
	
	
	
}
