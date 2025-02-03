package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dao.EmployeeDAO;
import home.staff.dto.EmployeeVO;

public class EmployeeServiceImpl implements EmployeeService {

	private EmployeeDAO employeeDAO;

	public EmployeeServiceImpl(EmployeeDAO employDAO) {
		this.employeeDAO = employDAO;
	}

	@Override
	public List<EmployeeVO> searchList(PageMaker pageMaker) throws SQLException {
		
		int totalCount = employeeDAO.selectSearchEmployeeListCount(pageMaker);
		pageMaker.setTotalCount(totalCount);
		
		return employeeDAO.selectSearchEmployeeList(pageMaker);
	}

	@Override
	public EmployeeVO getEmployee(String eid) throws SQLException {
		return employeeDAO.selectEmployeeByEid(eid);
	}

	@Override
	public void regist(EmployeeVO Employee) throws SQLException {
		employeeDAO.insertEmployee(Employee);
		
	}

	@Override
	public void modify(EmployeeVO Employee) throws SQLException {
		employeeDAO.updateEmployee(Employee);

	}

	@Override
	public void remove(String eid) throws SQLException {
		employeeDAO.deleteEmployee(eid);

	}

	@Override
	public void modifyAuthority(String eid, List<String> authorities) throws SQLException {
		employeeDAO.deleteAllAuthorityByEid(eid);

		if (authorities.size() > 0)
			for (String authority : authorities) {
				employeeDAO.insertEmployeeAuthorities(eid, authority);
			}
	}

	@Override
	public List<EmployeeVO> list(PageMaker pageMaker) throws SQLException {
		return employeeDAO.selectList(pageMaker);
	}

}
