package home.member.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.member.dto.Member_ListVO;

public interface Member_ListService {

	List<Member_ListVO> list(PageMaker pageMaker) throws SQLException;
}
