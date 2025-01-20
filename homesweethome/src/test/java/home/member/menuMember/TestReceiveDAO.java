package home.member.menuMember;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import home.staff.dao.ReceiveDAO;
import home.staff.dto.ReceiveVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:home/commons/context/root-context.xml")
public class TestReceiveDAO {

    @Autowired
    private ReceiveDAO receiveDAO;

    @Test
    public void testSelectMember() throws Exception {
        int targetRcno = 1; // 테스트할 RCNO 값

        // Receive 데이터 가져오기
        ReceiveVO receive = receiveDAO.selectReceiveByRcno(targetRcno);

        // Null 체크
        Assert.assertNotNull("ReceiveVO is null. Check if data exists for rcno: " + targetRcno, receive);

        // 값 확인
        Assert.assertEquals("RCNO does not match", targetRcno, receive.getRcno());

        // 출력
        System.out.println("Receive Data: " + receive);
    }
}
