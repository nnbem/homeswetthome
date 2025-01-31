package home.member.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import home.commons.request.PageMaker;
import home.member.dto.MemberVO;

public class MybatisMemberDAOImpl implements MemberDAO{

	private SqlSession session;

	public MybatisMemberDAOImpl(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<MemberVO> selectList(PageMaker pageMaker) throws SQLException {
		int offset = pageMaker.getStartRow();
		int limit = pageMaker.getPerPageNum();
		RowBounds bound = new RowBounds(offset, limit);
		
		return session.selectList("Member-Mapper.selectMemberList",pageMaker,bound);
	}

	@Override
	public MemberVO selectMemberByMid(String mid) throws SQLException {
		return session.selectOne("Member-Mapper.selectMemberByMid", mid);
	}

	@Override
	public void insertMember(MemberVO member) throws SQLException {
		session.insert("Member-Mapper.insertMember", member);
		
	}

	@Override
	public void updateMember(MemberVO member) throws SQLException {
		session.update("Member-Mapper.updateMEmber", member);
	}

	@Override
	public String getPwdByEid(String mid) throws SQLException {
		return session.selectOne("Member-Mapper.getPwdByMid", mid);
	}
	
}
