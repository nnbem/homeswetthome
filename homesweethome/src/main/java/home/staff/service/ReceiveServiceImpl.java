package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dao.ReceiveDAO;
import home.staff.dto.ReceiveVO;

public class ReceiveServiceImpl implements ReceiveService{
	
	 private ReceiveDAO receiveDAO;

    public ReceiveServiceImpl(ReceiveDAO receiveDAO) {
        this.receiveDAO = receiveDAO;
    }
	    
	@Override
	public List<ReceiveVO> list(PageMaker pageMaker) throws SQLException {
		// 검색 조건에 맞는 데이터 개수를 설정
        int totalCount = receiveDAO.selectSearchReceiveListCount(pageMaker);
        pageMaker.setTotalCount(totalCount);

        // 데이터 목록 반환
        return receiveDAO.selectSearchReceiveList(pageMaker);
	}

	@Override
    public ReceiveVO detail(int rcno) throws SQLException {
        return receiveDAO.selectReceiveByRcno(rcno);
    }

    @Override
    public int count(PageMaker pageMaker) throws SQLException {
        return receiveDAO.selectSearchReceiveListCount(pageMaker);
    }

    @Override
    public ReceiveVO getReceive(int rcno) throws SQLException {
        return receiveDAO.selectReceiveByRcno(rcno);
    }

    @Override
    public int getReceiveByAid(long aid) throws SQLException {
        return receiveDAO.selectReceiveByAid(aid);
    }

    @Override
    public void update(ReceiveVO receive) throws SQLException {
        // 입력값 검증
        if (receive.getRcno() <= 0) {
            throw new IllegalArgumentException("유효하지 않은 rcno 값입니다.");
        }

        // DAO 호출하여 데이터 업데이트
        receiveDAO.updateReceive(receive);
    }

    @Override
    public void regist(ReceiveVO receive) throws SQLException {
		if (receive.getRcno() <= 0) { // rcno가 없는 경우
		throw new IllegalArgumentException("유효하지 않은 rcno 값입니다.");
		}

        receiveDAO.insertReceive(receive);
    }

    @Override
    public void remove(int rcno) throws SQLException {
        receiveDAO.deleteReceive(rcno);
    }
    
    @Override
	public int getRcnoByAid(long aid) throws SQLException {
		return receiveDAO.selectReceiveByAid(aid);
	}

	@Override
	public ReceiveVO getReceiveByEid(String eid) throws SQLException {
		return receiveDAO.selectReceiveByEid(eid);
	}


}
