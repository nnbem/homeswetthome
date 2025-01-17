package home.member.dao;

import java.sql.SQLException;
import java.util.List;

import home.commons.request.PageMaker;
import home.member.dto.MemberVO;

public interface MemberDAO {

	List<MemberVO> selectList(PageMaker pageMaker) throws SQLException; // 회원정보

	MemberVO selectMemberByMid(String mid) throws SQLException; // ID로 회원 조회

	void insertMember(MemberVO member) throws SQLException; // 회원가입

	void updateMember(MemberVO member) throws SQLException; // 회원정보 수정

	void deleteMember(String mid) throws SQLException; // 회원탈퇴

}
