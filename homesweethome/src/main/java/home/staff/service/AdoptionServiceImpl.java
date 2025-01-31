package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.staff.dao.AdoptionDAO;
import home.staff.dto.AdoptionDetailVO;
import home.staff.dto.AdoptionVO;

public class AdoptionServiceImpl implements AdoptionService{
	
	private AdoptionDAO adoptionDAO;
	
	public AdoptionServiceImpl(AdoptionDAO adoptionDAO) {
		this.adoptionDAO = adoptionDAO;
	}

	@Override
	public List<AdoptionVO> list(PageMaker pageMaker) throws SQLException {
		int totalCount = adoptionDAO.selectSearchAdoptionListCount(pageMaker);
		pageMaker.setTotalCount(totalCount);
		
		return adoptionDAO.selectSearchAdoptionList(pageMaker);
	}

	@Override
	public AdoptionVO detail(int ano) throws SQLException {
		return adoptionDAO.selectAdoptionByAno(ano);
	}

	@Override
	public int count(PageMaker pageMaker) throws SQLException {
		return adoptionDAO.selectSearchAdoptionListCount(pageMaker);
	}

	@Override
	public AdoptionVO getAdoption(int ano) throws SQLException {
		return adoptionDAO.selectAdoptionByAno(ano);
	}

	@Override
	public AdoptionVO getAdoption(long aid) throws SQLException {
		return adoptionDAO.selectAdoptionByAid(aid);
	}

	@Override
	public void regist(AdoptionVO adoption) throws SQLException {
		int ano = adoptionDAO.selectNoticeSequenceNextValue();
		adoption.setAno(ano);
		adoptionDAO.insertAdoption(adoption);
	}

	@Override
	public void update(AdoptionVO adoption) throws SQLException {
		adoptionDAO.updateAdoption(adoption);
	}

	@Override
	public AdoptionDetailVO getAdoptionDetail(int ano) throws SQLException {
		return adoptionDAO.selectAdoptionDetail(ano);
	}

}
