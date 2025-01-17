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
	public List<EmployeeVO> searchList(PageMaker page) throws SQLException {
		List<EmployeeVO> employeeList = employeeDAO.selectSearchEmployeeList(page);
		int totalCount = employeeDAO.selectSearchEmployeeListCount(page);
		page.setTotalCount(totalCount);
		return employeeList;
	}

	@Override
	public EmployeeVO getEmployee(String id) throws SQLException {
		return employeeDAO.selectEmployeeByEid(id);
	}

	@Override
	public void regist(EmployeeVO Employee) throws SQLException {
		employeeDAO.insertEmployee(Employee);
		if (Employee.getAuthorities().size() > 0)
			for (String authority : Employee.getAuthorities()) {
				employeeDAO.insertEmployeeAuthorities(Employee.getEid(), authority);
			}
	}

	@Override
	public void modify(EmployeeVO Employee) throws SQLException {
		employeeDAO.updateEmployee(Employee);

	}

	@Override
	public void remove(String id) throws SQLException {
		employeeDAO.deleteEmployee(id);

	}

	@Override
	public void modifyAuthority(String id, List<String> authorities) throws SQLException {
		employeeDAO.deleteAllAuthorityByEid(id);

		if (authorities.size() > 0)
			for (String authority : authorities) {
				employeeDAO.insertEmployeeAuthorities(id, authority);
			}
	}

	@Override
	public List<EmployeeVO> list(PageMaker pageMaker) throws SQLException {
		return employeeDAO.selectList(pageMaker);
	}

}
