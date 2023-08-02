package com.act.member;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MemberService
{
   @Autowired
   private SqlSession sqlSession;
   
   @Transactional
   public int join(HttpSession session, MemberDTO dto)
   {
	   IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
	   String memSid = dao.getMemSid();		//난수 생성
	   dto.setMemSid(memSid);					// dto에 MEM_SID 세팅
	   dao.add(memSid);						// member 테이블에 MEM_SID insert
	   int result = dao.join(dto);				// JOIN_MEMBER 테이블에 회원가입 데이터 INSERT
	   
	   return result;
   }
   
   
}