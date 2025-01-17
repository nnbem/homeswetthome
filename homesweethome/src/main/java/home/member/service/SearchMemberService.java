package home.member.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.member.dto.MemberVO;

public interface SearchMemberService extends MemberService {
	
	List<MemberVO> searchList(PageMaker pageMaker) throws SQLException;

	MemberVO getMemberByMid(String mid);
}
