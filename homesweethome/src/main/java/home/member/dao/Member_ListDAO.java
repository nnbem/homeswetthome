package home.member.dao;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.member.dto.Member_ListVO;

public interface Member_ListDAO {

	List<Member_ListVO> selectList(PageMaker pageMaker) throws SQLException;
}
