package home.member.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.member.dao.Member_ListDAO;
import home.member.dto.Member_ListVO;

public class Member_ListServiceImpl implements Member_ListService {

	private Member_ListDAO member_ListDAO;

	public Member_ListServiceImpl(Member_ListDAO member_ListDAO) {
		this.member_ListDAO = member_ListDAO;
	}

	@Override
	public List<Member_ListVO> list(PageMaker pageMaker) throws SQLException {
		return member_ListDAO.selectList(pageMaker);
	}
	
}
