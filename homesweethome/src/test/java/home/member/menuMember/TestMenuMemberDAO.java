package home.member.menuMember;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import home.member.dao.MenuMemberDAO;
import home.member.dto.MenuMemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:home/commons/context/root-context.xml")
public class TestMenuMemberDAO {

    @Autowired
    private MenuMemberDAO menuMemberDAO;

    @Test
    public void testSelectMenuMemberByMcode() throws Exception {
        String targetMcode = "M010100";

        MenuMemberVO menuMember = menuMemberDAO.selectMenuMemberByMcode(targetMcode);

        Assert.assertNotNull("MenuMember is null", menuMember);

        Assert.assertEquals("Mcode does not match", targetMcode, menuMember.getMcode());

        System.out.println("MenuMember: " + menuMember.getMname());
    }
}
