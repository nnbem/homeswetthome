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
        // 테스트할 rcno
        long targetRcno = 410060426700015L; // 'L' 추가하여 long 타입 리터럴로 명시

        // Receive 데이터 가져오기
        ReceiveVO receive = receiveDAO.selectReceiveByRcno(targetRcno);

        // receive가 null인지 확인 후 처리
        Assert.assertNotNull("ReceiveVO is null. Check if data exists for rcno: " + targetRcno, receive);

        // rcno 검증
        Assert.assertEquals("RCNO does not match", targetRcno, receive.getRcno());

        // 테스트 데이터 출력
        System.out.println("Receive Data: " + receive);
    }
}
