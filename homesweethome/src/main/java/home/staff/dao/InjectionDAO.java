package home.staff.dao;

import java.sql.SQLException;

import home.staff.dto.InjectionVO;

public interface InjectionDAO {
	InjectionVO selectInjectionByAid(Long aid)throws SQLException;
	void insertInjection(InjectionVO injection)throws SQLException;
	void updateInjection(InjectionVO injection)throws SQLException;
	void deleteInjection(Long aid)throws SQLException;
	int selectTnoSeqNext()throws SQLException;
}
