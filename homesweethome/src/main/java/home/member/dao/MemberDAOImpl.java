package home.member.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import home.commons.request.PageMaker;
import home.member.dto.MemberVO;

public class MemberDAOImpl implements MemberDAO {

   @Autowired
   private SqlSession session;
   public MemberDAOImpl(SqlSession session) {
      this.session = session;
   }
   @Override
   public MemberVO selectMemberByMid(String id) throws SQLException {
      return session.selectOne("home.member.mapper.MemberMapper.selectMemberByMid", id);
   }
   @Override
   public List<MemberVO> selectList(PageMaker pageMaker) throws SQLException {
      // TODO Auto-generated method stub
      return null;
   }
   @Override
   public void insertMember(MemberVO member) throws SQLException {
      // TODO Auto-generated method stub
      
   }
   @Override
   public void updateMember(MemberVO member) throws SQLException {
      // TODO Auto-generated method stub
      
   }
   @Override
   public void deleteMember(String mid) throws SQLException {
      // TODO Auto-generated method stub
      
   }

   
   
}
