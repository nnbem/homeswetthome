package home.staff.dao;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import home.staff.dto.EmployeeVO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:home/commons/context/root-context.xml")
public class TestEmployeeDAOImpl {

	@Autowired
	@Qualifier("EmployeeDAO")
	private EmployeeDAO employeeDAO;
	
	@Test
	public void testSelectEmployeeByEid() throws Exception{
		String targetEid = "asdf77";
		
		EmployeeVO employee = employeeDAO.selectEmployeeByEid(targetEid);
		
		Assert.assertEquals(targetEid, employee.getEid());
	}
}
