package home.member.service;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.member.dto.MemberVO;

public interface MemberService {
	
	// 회원목록
	List<MemberVO> list(PageMaker pageMaker)throws SQLException;
	
	// 회원조회
    MemberVO getMember(String mid) throws SQLException; 
    
    // 회원가입(등록)
    void regist(MemberVO member) throws SQLException;
    
    // 회원수정
    void modify(MemberVO member) throws SQLException;
    
    // 비밀번호 확인
    boolean checkPassword(String loginUser, String password);
}