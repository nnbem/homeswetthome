package home.member.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import home.commons.request.PageMaker;
import home.member.dto.Member_ListVO;

public class Member_ListDAOImpl implements Member_ListDAO{

	private SqlSession session;

	public Member_ListDAOImpl(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<Member_ListVO> selectList(PageMaker pageMaker) throws SQLException {
		int offset = pageMaker.getStartRow();
		int limit = pageMaker.getPerPageNum();
		RowBounds bound = new RowBounds(offset, limit);
		
		return session.selectList("Member-Mapper.selectMember_List",pageMaker,bound);
	}
	
}
