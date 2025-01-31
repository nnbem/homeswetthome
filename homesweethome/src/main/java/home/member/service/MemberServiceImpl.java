package home.member.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Service;

import home.commons.request.PageMaker;
import home.member.dao.SearchMemberDAO;
import home.member.dto.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

private SearchMemberDAO searchMemberDAO;
	
	public MemberServiceImpl(SearchMemberDAO searchMemberDAO) {
		this.searchMemberDAO = searchMemberDAO;		
	}

	@Override
	public List<MemberVO> list(PageMaker pageMaker) throws SQLException {
		return searchMemberDAO.selectList(pageMaker);
	}

	@Override
	public MemberVO getMember(String mid) throws SQLException {
		MemberVO member = searchMemberDAO.selectMemberByMid(mid);
		return member;
	}

	@Override
	public void regist(MemberVO member) throws SQLException {
		
		if (searchMemberDAO.selectMemberByMid(member.getMid()) != null) {
			throw new SQLException("사용중인 아이디입니다.");
		}
		
		searchMemberDAO.insertMember(member);
	}

	@Override
	public void modify(MemberVO member) throws SQLException {
		searchMemberDAO.updateMember(member);
	}

	@Override
	public boolean checkPassword(String mid, String pwd) {
	    String checkPwd = searchMemberDAO.getPwdByMid(mid);
	    return checkPwd != null && checkPwd.equals(pwd);
	}

	
}
