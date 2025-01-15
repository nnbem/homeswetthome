package home.member.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.member.dto.MemberVO;

public interface MemberService {
   
   List<MemberVO> list(PageMaker pageMaker)throws SQLException;
   
    MemberVO getMember(String mid) throws SQLException; 
    
    void regist(MemberVO member) throws SQLException;
    
    void modify(MemberVO member) throws SQLException;
    
    void remove(String mid) throws SQLException;
}