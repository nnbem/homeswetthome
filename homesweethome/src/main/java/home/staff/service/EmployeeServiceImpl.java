package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import home.commons.request.PageMaker;
import home.staff.dao.EmployeeDAO;
import home.staff.dto.EmployeeVO;

public class EmployeeServiceImpl implements EmployeeService{

	private EmployeeDAO employeeDAO;
	
	@Autowired
	public EmployeeServiceImpl(EmployeeDAO employeeDAO) {
		this.employeeDAO = employeeDAO;
	}
	
	@Override
	public List<EmployeeVO> list(PageMaker pageMaker) throws SQLException {
		return employeeDAO.selectList(pageMaker);
	}

	@Override
	public EmployeeVO getMember(String eid) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void regist(EmployeeVO employee) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modify(EmployeeVO employee) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(String eid) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyAuthority(String eid, List<String> authorities) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public EmployeeVO getEmployee(String eid) throws SQLException {
		return employeeDAO.selectEmployeeByEid(eid);
	}

}
