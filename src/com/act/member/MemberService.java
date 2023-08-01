package com.act.member;

import java.util.Random;

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
   public void join(HttpSession session, MemberDTO dto)
   {
	   IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
	      
	      Random random = new Random();
	      int num = random.nextInt(100);
	      String strNum = String.valueOf(num);
	      
	      dao.add(strNum);
	      System.out.println("MemberService 온거 확인");
	      
	      dto.setMemSid(strNum);
	      dao.join(dto);
	      
	      session.setAttribute("memberId", dto.getJmId());
      
      
   }
   
	/*
	 * // 랜덤 알파벳 + 숫자 난수 발생 코드 private String randomNum() { String result = "";
	 * 
	 * IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class); result =
	 * dao.getRandom(); return result; }
	 */
   
}