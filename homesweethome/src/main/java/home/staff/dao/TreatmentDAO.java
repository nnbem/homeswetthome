package home.staff.dao;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.TreatmentPageMaker;
import home.staff.dto.TreatmentVO;

public interface TreatmentDAO {
	List<TreatmentVO> selectSearchTreatmentList(TreatmentPageMaker pagemaker)throws SQLException;
	TreatmentVO selectTreatmentBytno(int tno)throws SQLException;
	void insertTreatment(TreatmentVO treatment)throws SQLException;
	void updateTreatment(TreatmentVO treatment)throws SQLException;
	void deleteTreatment(int tno)throws SQLException;
	int selectSearchTreatmentCount(TreatmentPageMaker pagemaker)throws SQLException;
	int selectTnoSeqNext()throws SQLException;
	List<TreatmentVO> selectTreatmentListByAid(Long aid)throws SQLException;
}
