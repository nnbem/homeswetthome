package home.member.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.member.dto.MemberVO;

public interface SearchMemberService extends MemberService {
	
	// 회원검색
	List<MemberVO> searchList(PageMaker pageMaker) throws SQLException;

	
	// 비밀번호 확인
	boolean checkPassword(String loginUser, String password);
}
