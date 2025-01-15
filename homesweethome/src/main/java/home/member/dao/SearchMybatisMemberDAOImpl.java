package home.member.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import home.commons.request.PageMaker;
import home.member.dto.MemberVO;

@Repository
public class SearchMybatisMemberDAOImpl extends MybatisMemberDAOImpl implements SearchMemberDAO {

   private SqlSession session;

   @Autowired
   public SearchMybatisMemberDAOImpl(SqlSession session) {
      super(session);
      this.session = session;
   }

   @Override
   public List<MemberVO> selectSearchMemberList(PageMaker pageMaker) throws SQLException {
      int offset = pageMaker.getStartRow()-1;
      int limit = pageMaker.getPerPageNum();
      
      RowBounds rows = new RowBounds(offset,limit);
      
      List<MemberVO> memberList 
      = session.selectList("Member-Mapper.selectSearchMemberList",pageMaker,rows);
      return memberList;
   }

   @Override
   public int selectSearchMemberListCount(PageMaker pageMaker) throws SQLException {
      return session.selectOne("Member-Mapper.selectSearchMemberListCount", pageMaker);
   }
   
   
}
