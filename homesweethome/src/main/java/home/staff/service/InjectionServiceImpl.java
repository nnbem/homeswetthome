package home.staff.service;

import java.sql.SQLException;

import home.staff.dao.InjectionDAO;
import home.staff.dto.InjectionVO;

public class InjectionServiceImpl implements InjectionService {

	private InjectionDAO injectionDAO;
	public InjectionServiceImpl(InjectionDAO injectionDAO) {
		this.injectionDAO = injectionDAO;
	}
	
	@Override
	public InjectionVO injection(Long aid) throws SQLException {
		return injectionDAO.selectInjectionByAid(aid);
	}

	@Override
	public void registInjection(InjectionVO injection) throws SQLException {
		int injo = injectionDAO.selectTnoSeqNext();
		injection.setIjno(injo);
		injectionDAO.insertInjection(injection);
	}

	@Override
	public void modifyInjection(InjectionVO injection) throws SQLException {
		injectionDAO.updateInjection(injection);

	}

	@Override
	public void removeInjection(Long aid) throws SQLException {
		injectionDAO.deleteInjection(aid);
	}

}
