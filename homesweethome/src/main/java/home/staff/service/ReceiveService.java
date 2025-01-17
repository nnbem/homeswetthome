package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dto.ReceiveVO;

public interface ReceiveService {
	
		//목록
		public List<ReceiveVO> list(PageMaker pageMaker) throws SQLException;
		
		//상세
		public ReceiveVO detail(long rcno) throws SQLException;
		
		//수정
		public ReceiveVO getReceive(long rcno) throws SQLException;
		public void modify(ReceiveVO receive) throws SQLException;
		
		//등록
		public void regist (ReceiveVO receive) throws SQLException;
		
		//삭제
		public void remove(long rcno) throws SQLException;
}
