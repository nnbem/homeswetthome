package home.staff.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		int offset = pageMaker.getStartRow() - 1;
		int limit = pageMaker.getPerPageNum();

		RowBounds bounds = new RowBounds(offset, limit);

		List<EmployeeVO> employeeList = session.selectList("Employee-Mapper.selectSearchEmployeeList", pageMaker,
				bounds);

		return employeeList;
	}

	@Override
	public int selectSearchEmployeeListCount(PageMaker pageMaker) throws SQLException {
		return session.selectOne("Employee-Mapper.selectSearchEmployeeListCount", pageMaker);
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
	public List<String> selectEmployeeAuthoritiesByEid(String eid) throws SQLException {
		return session.selectOne("Employee-Mapper.selectEmployeeAuthoritiesByEid", eid);
	}

	@Override
	public void insertEmployeeAuthorities(String eid, String authority) throws SQLException {
		Map<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("eid", eid);
		paramMap.put("authority", authority);
		session.insert("Member-Mapper.insertAuthorities", paramMap);
	}

	@Override
	public void deleteAllAuthorityByEid(String eid) throws SQLException {
		session.delete("Member-Mapper.deleteAllAuthorityByEid", eid);
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
