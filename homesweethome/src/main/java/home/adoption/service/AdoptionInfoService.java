package home.adoption.service;

import java.sql.SQLException;
import java.util.List;

import home.adoption.dto.AdoptionInfoVO;
import home.commons.request.PageMaker;

public interface AdoptionInfoService {

	List<AdoptionInfoVO> getAdoptlist(String loginUser) throws SQLException;
}
