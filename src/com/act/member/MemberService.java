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
	
	// 아이디 비밀번호로 memSid 조회하기
	public String searchMemsid(MemberDTO dto)
	{
		String result;
		
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		result = dao.searchMemsid(dto);
		
		return result;
		
	}
	
	// 이름, 주민번호로 아이디 찾기
	public String findId(MemberDTO dto)
	{
		String result = "";
		
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		result = dao.findId(dto);
		
		return result;
	}
	
}

	// 아이디, 이름, 주민번호로 memSid 찾기 
	public String findPw(MemberDTO dto)
	{
		 String result = "";
		
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		result = dao.findPw(dto);
		
		return result;
	}
	
	// 비밀번호 재설정
	public int updatePw(MemberDTO dto)
	{
		int result = 0;
		
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		result = dao.updatePw(dto);
		
		return result;
	}
	
	// 설명써주세
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

