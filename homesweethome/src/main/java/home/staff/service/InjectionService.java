package home.staff.service;

import java.sql.SQLException;

import home.staff.dto.InjectionVO;

public interface InjectionService {
	InjectionVO injection(Long aid)throws SQLException;
	void registInjection(InjectionVO injection)throws SQLException;
	void modifyInjection(InjectionVO injection)throws SQLException;
	void removeInjection(Long aid)throws SQLException;
}
