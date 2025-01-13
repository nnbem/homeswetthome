package home.member.dao;

import java.sql.SQLException;
import java.util.List;

import home.member.dto.MemberVO;

public interface MemberDAO {

	List<MemberVO> selectList() throws SQLException;
	
	MemberVO selectMemberByMid(String mid) throws SQLException;
	 
	void insertMember(MemberVO member) throws SQLException;
	
	void updateMember(MemberVO member) throws SQLException;
	
	void deleteMember(String mid) throws SQLException;
	 
}
