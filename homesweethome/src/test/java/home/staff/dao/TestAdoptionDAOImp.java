package home.staff.dao;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import home.staff.dto.AdoptionVO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:home/commons/context/root-context.xml")
public class TestAdoptionDAOImp {

	@Autowired
	private AdoptionDAO adoptionDAO;
	
	@Test
	public void testSelectAdoption() throws Exception{
		int targetAno = 2200001;
		
		AdoptionVO adoption = adoptionDAO.selectAdoptionByAno(targetAno);
		
		Assert.assertEquals(targetAno, adoption.getAno());
	}
}
