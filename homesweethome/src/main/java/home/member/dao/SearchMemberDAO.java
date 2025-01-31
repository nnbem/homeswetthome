package home.member.dao;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.member.dto.MemberVO;

public interface SearchMemberDAO extends MemberDAO{
	
	List<MemberVO> selectSearchMemberList(PageMaker pageMaker) throws SQLException;
	
	MemberVO getMemberByMid(String mid);
	
	int selectSearchMemberListCount(PageMaker pageMaker) throws SQLException;

	String getPwdByMid(String mid);
}
