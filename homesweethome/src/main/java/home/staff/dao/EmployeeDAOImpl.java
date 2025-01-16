package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import home.commons.request.PageMaker;
import home.staff.dto.EmployeeVO;

public class EmployeeDAOImpl implements EmployeeDAO {

	private SqlSession session;
	
	public EmployeeDAOImpl(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<EmployeeVO> selectSearchEmployeeList(PageMaker pageMaker) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectSearchEmployeeListCount(PageMaker pageMaker) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<String> selectEmployeeAuthoritiesByEid(String eid) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertEmployeeAuthorities(String eid, String authority) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteAllAuthorityByEid(String eid) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public List<EmployeeVO> selectEmployeeList() throws SQLException {
		return session.selectList("Employee-Mapper.selectEmployeeList");
	}

	@Override
	public EmployeeVO selectEmployeeByEid(String eid) throws SQLException {
		return session.selectOne("Employee-Mapper.selectEmployeeByEid", eid);
	}

	@Override
	public void insertEmployee(EmployeeVO employee) throws SQLException {
		session.insert("Employee-Mapper.insertEmployee", employee);

	}

	@Override
	public void updateEmployee(EmployeeVO employee) throws SQLException {
		session.update("Employee-Mapper.updateEmployee", employee);

	}

	@Override
	public void deleteEmployee(String eid) throws SQLException {
		session.delete("Employee-Mapper.deleteEmployee", eid);

	}

	@Override
	   public List<EmployeeVO> selectList(PageMaker pageMaker) throws SQLException {
	      int offset = pageMaker.getStartRow();
	      int limit = pageMaker.getPerPageNum();
	      RowBounds bound = new RowBounds(offset, limit);
	      
	      return session.selectList("Employee-Mapper.selectEmployeeList", pageMaker, bound);
	   }

}
