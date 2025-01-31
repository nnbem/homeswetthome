package home.staff.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.AnimalCarePageMaker;
import home.staff.dao.AnimalCareDAO;
import home.staff.dao.AnimalImgDAO;
import home.staff.dao.ReceiveDAO;
import home.staff.dto.AnimalCareVO;
import home.staff.dto.AnimalImgVO;
import home.staff.dto.AnimalVO;
import home.staff.dto.BasicVO;
import home.staff.dto.BreedVO;
import home.staff.dto.ReceiveVO;

public class AnimalCareServiceImpl implements AnimalCareService {

	private AnimalCareDAO animalCareDAO;
	private ReceiveDAO receiveDAO;
	private AnimalImgDAO animalImgDAO;
	public AnimalCareServiceImpl(AnimalImgDAO animalImgDAO, AnimalCareDAO animalCareDAO, ReceiveDAO receiveDAO) {
		this.animalCareDAO = animalCareDAO;
		this.receiveDAO = receiveDAO;
		this.animalImgDAO = animalImgDAO;
	}
	
	@Override
	public List<AnimalCareVO> list(AnimalCarePageMaker pageMaker) throws SQLException {
		List<AnimalCareVO> animalList = animalCareDAO.selectSearchAnimalList(pageMaker);
		
		if(animalList != null) {
			for(AnimalCareVO animal : animalList) {
				Long aid = animal.getAid();
				List<AnimalImgVO> animalImg = animalImgDAO.selectAnimalImgByAid(aid);
				animal.setAnimalImgList(animalImg);
			}
		}
		
		int totalCount = animalCareDAO.selectSearchAnimalListCount(pageMaker);
		pageMaker.setTotalCount(totalCount);
		
		return animalList;
	}


	@Override
	public AnimalCareVO getName(String name) throws SQLException {
		return animalCareDAO.selectAnimalNameByEid(name);
	}

	@Override
	public AnimalCareVO myAnimalList(String eid) throws SQLException {
		return animalCareDAO.selectAnimalByEid(eid);
	}

	@Override
	public BasicVO basic(Long aid) throws SQLException {
		BasicVO basic = animalCareDAO.selectBasicListByAid(aid);
		basic.setAnimalImgList(animalImgDAO.selectAnimalImgByAid(aid));
		
		return basic;
	}

	@Override
	public void registAnimal(AnimalVO animal,ReceiveVO receive) throws SQLException {
		animalCareDAO.insertAnimal(animal);
		int rcno = receiveDAO.selectReceiveSeqNext();
		receive.setRcno(rcno);
		receiveDAO.insertReceiveInAnimalCare(receive);
		
		List<AnimalImgVO> animalImgList = animal.getAnimalImgList();
		if(animalImgList != null) {
			for(AnimalImgVO animalImg : animalImgList) {
				animalImg.setAid(animal.getAid());
				animalImgDAO.insertAnimalImg(animalImg);
			}
		}else {
			System.out.println("animalImgList is not found");
		}
	}

	@Override
	public void modifyAnimal(AnimalVO animal,ReceiveVO receive) throws SQLException {
		animalCareDAO.updateAnimal(animal);
		int rcno = receiveDAO.selectRcnoByAid(animal.getAid());
		receive.setRcno(rcno);
		receiveDAO.updateReceiveInAnimalCare(receive);
		
		List<AnimalImgVO> animalImgList = animal.getAnimalImgList();
		if(animalImgList != null) {
			for(AnimalImgVO animalImg : animalImgList) {
				animalImg.setAid(animal.getAid());
				animalImgDAO.insertAnimalImg(animalImg);
			}
		}else {
			System.out.println("animalImgList is not found");
		}
		
	}

	@Override
	public void removeAnimal(Long aid) throws SQLException {
		animalCareDAO.deleteAnimal(aid);
	}

	@Override
	public AnimalVO animalByAid(Long aid) throws SQLException {
		return animalCareDAO.selectAnimalByAid(aid);
	}

	@Override
	public Long getAnimalSeq() throws SQLException {
		return animalCareDAO.selectAnimalSeqNext();
	}

	@Override
	public List<BreedVO> BreedList() throws SQLException {
		return animalCareDAO.selectBreed();
	}	
}
