package home.member.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.member.dao.SharingDAO;
import home.member.dto.SharingVO;
import home.staff.dto.NoticeVO;

public class SharingServiceImpl implements SharingService {

	private SharingDAO sharingDAO;

	public SharingServiceImpl(SharingDAO sharingDAO) {
		this.sharingDAO = sharingDAO;
	}

	@Override
	public List<SharingVO> list(PageMaker pageMaker) throws SQLException {
		List<SharingVO> sharingList = sharingDAO.selectSearchSharingList(pageMaker);
		
		int totalCount = sharingDAO.selectSearchSharingListCount(pageMaker);
		pageMaker.setTotalCount(totalCount);
		
		return sharingList;
	}

	@Override
	public SharingVO detail(int sno) throws SQLException {
		sharingDAO.increaseViewCnt(sno);
		return sharingDAO.selectSharingBySno(sno);
	}

	@Override
	public void regist(SharingVO sharing) throws SQLException {
		int sno = sharingDAO.selectSharingSeqNext();
		sharing.setSno(sno);
		sharingDAO.insertSharing(sharing);
	}

	@Override
	public void modify(SharingVO sharing) throws SQLException {
		sharingDAO.updateSharing(sharing);
	}

	@Override
	public SharingVO getsharing(int sno) throws SQLException {
		return sharingDAO.selectSharingBySno(sno);
	}

	@Override
	public void remove(int sno) throws SQLException {
		SharingVO sharing = sharingDAO.selectSharingBySno(sno);
	}

	@Override
	public SharingVO getMid(String mid) throws SQLException {
		return sharingDAO.selectBySharingMid(mid);
	}
	
	
}
