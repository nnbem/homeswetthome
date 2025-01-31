package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.TreatmentPageMaker;
import home.staff.dto.TreatmentVO;

public interface TreatmentService {
	List<TreatmentVO> selectTreatmentList(TreatmentPageMaker pagemaker)throws SQLException;
	TreatmentVO selectTreatment(int tno)throws SQLException;
	void registTreatment(TreatmentVO treatment)throws SQLException;
	void modifyTreatment(TreatmentVO treatment)throws SQLException;
	void removeTreatment(int tno)throws SQLException;
	List<TreatmentVO> selectTreatmentListByAid(Long aid)throws SQLException;
}
