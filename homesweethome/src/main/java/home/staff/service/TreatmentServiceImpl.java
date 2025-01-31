package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.TreatmentPageMaker;
import home.staff.dao.TreatmentDAO;
import home.staff.dto.TreatmentVO;

public class TreatmentServiceImpl implements TreatmentService {
	
	private TreatmentDAO treatmentDAO;
	public TreatmentServiceImpl(TreatmentDAO treatmentDAO) {
		this.treatmentDAO = treatmentDAO;
	}
	
	@Override
	public List<TreatmentVO> selectTreatmentList(TreatmentPageMaker pagemaker) throws SQLException {
		int totalCount = treatmentDAO.selectSearchTreatmentCount(pagemaker);
		pagemaker.setTotalCount(totalCount);
		
		return treatmentDAO.selectSearchTreatmentList(pagemaker);
	}

	@Override
	public TreatmentVO selectTreatment(int tno) throws SQLException {
		return treatmentDAO.selectTreatmentBytno(tno);
	}

	@Override
	public void registTreatment(TreatmentVO treatment) throws SQLException {
		int tno = treatmentDAO.selectTnoSeqNext();
		treatment.setTno(tno);
		treatmentDAO.insertTreatment(treatment);
	}

	@Override
	public void modifyTreatment(TreatmentVO treatment) throws SQLException {
		treatmentDAO.updateTreatment(treatment);
	}

	@Override
	public void removeTreatment(int tno) throws SQLException {
		treatmentDAO.deleteTreatment(tno);

	}

	@Override
	public List<TreatmentVO> selectTreatmentListByAid(Long aid) throws SQLException {
		return treatmentDAO.selectTreatmentListByAid(aid);
	}

}
