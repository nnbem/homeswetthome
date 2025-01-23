package home.member.mypageMenu;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import home.member.dao.MypageMenuDAO;
import home.member.dto.MypageMenuVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:home/commons/context/root-context.xml")
public class TestMypageMenuDAO {
	
	@Autowired
	private MypageMenuDAO mypageMenuDAO;
	
	
	@Test
	public void testSelectMypageMenuByTcode() throws Exception {
	    String targetTcode = "T010001"; // 유효한 값 전달

	    MypageMenuVO mypageMenu = mypageMenuDAO.selectMypageMenuByTcode(targetTcode);
	    Assert.assertNotNull("MypageMenu is null", mypageMenu);
	    
	    Assert.assertEquals("Tcode does not match", targetTcode, mypageMenu.getTcode());
	    
	    System.out.println("mypageMenu: " + mypageMenu.getTname());
	}



}
