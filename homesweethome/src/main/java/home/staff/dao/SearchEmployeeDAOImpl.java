package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import home.commons.request.PageMaker;
import home.staff.dto.EmployeeVO;

public class SearchEmployeeDAOImpl extends EmployeeDAOImpl implements SearchEmployeeDAO {

	private SqlSession session;

	@Autowired
	public SearchEmployeeDAOImpl(SqlSession session) {
		super(session);
		this.session = session;
	}

	@Override
	public List<EmployeeVO> selectSearchEmployeeList(PageMaker pageMaker) throws SQLException {
		int offset = pageMaker.getStartRow()-1;
		int limit = pageMaker.getPerPageNum();
		
		RowBounds rows = new RowBounds(offset, limit);
		
		List<EmployeeVO> employeeList = session.selectList("Employee-Mapper.selectSearchEmployeeList", pageMaker, rows);
	
		return employeeList;
		
	}

	@Override
	public EmployeeVO getEmployeeByEid(String eid) {
		return session.selectOne("Employee-Mapper.getEmployeeByEid", eid);
	}

	@Override
	public int selectSearchEmployeeListCount(PageMaker pageMaker) throws SQLException {
		return session.selectOne("Employee-Mapper.selectSearchEmployeeListCount", pageMaker);
	}
	
	
}