package home.member.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import home.commons.request.PageMaker;
import home.member.dto.MemberVO;

public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession session;
	public MemberDAOImpl(SqlSession session) {
		this.session = session;
	}
	@Override
	public MemberVO selectMemberByMid(String mid) throws SQLException {
		return session.selectOne("Member-Mapper.selectMemberByMid", mid);
	}
	@Override
	public List<MemberVO> selectList(PageMaker pageMaker) throws SQLException {
		return session.selectList("Member-Mapper.selectMemberList", pageMaker);
	}
	@Override
	public void insertMember(MemberVO member) throws SQLException {
		session.insert("Member-Mapper.insertMember", member);
	}
	@Override
	public void updateMember(MemberVO member) throws SQLException {
		session.update("Member-Mapper.updateMember", member);
	}
	
	@Override
	public String getPwdByEid(String mid) throws SQLException {
		return session.selectOne("Member-Mapper.getPwdByMid", mid);
	}
}
