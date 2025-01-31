package home.member.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import home.commons.request.PageMaker;
import home.member.dao.SearchMemberDAO;
import home.member.dto.MemberVO;

@Service
public class SearchMemberServiceImpl extends MemberServiceImpl implements SearchMemberService {
	
	private final SearchMemberDAO searchMemberDAO;

	@Autowired
	public SearchMemberServiceImpl(SearchMemberDAO searchMemberDAO) {
		super(searchMemberDAO);
		this.searchMemberDAO = searchMemberDAO;
	}

	@Override
	public List<MemberVO> searchList(PageMaker pageMaker) throws SQLException {
		List<MemberVO> memberList = searchMemberDAO.selectSearchMemberList(pageMaker);
		
		int totalCount = searchMemberDAO.selectSearchMemberListCount(pageMaker);
		pageMaker.setTotalCount(totalCount);
		
		return memberList;
	}
	
	@Override
    public boolean checkPassword(String loginUser, String password) {
        String storedPassword = searchMemberDAO.getPwdByMid(loginUser);

        if (storedPassword == null || !storedPassword.equals(password)) {
            return false;
        }

        return true;
    }

	
	
}
