package com.act.member;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.transaction.annotation.Transactional;

@Service
public class MemberService implements IMemberService
{
	
	 @Autowired private SqlSession sqlSession;

	// 아이디 비밀번호로 memSid 조회하기
	public String searchMemsid(MemberDTO dto)
	{
		String result = "";

		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		result = dao.searchMemsid(dto);
		return result;

	}
	
	// 아이디 비밀번호로 펫시팅 종료 카운트 조회
	public String searchSittingcount(MemberDTO dto)
	{
		String result = "";

		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		result = dao.searchSittingcount(dto);
		return result;

	}
	
	// 아이디 비밀번호로 대리산책 종료 카운트 조회
	public String searchWalkcount(MemberDTO dto)
	{
		String result = "";

		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		result = dao.searchWalkcount(dto);
		return result;

	}
	
	// 아이디 비밀번호로 memNickName 조회하기
		public String searchMemNickName(MemberDTO dto)
		{
			String result = "";

			IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
			result = dao.searchMemNickName(dto);
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
	
   
   // 아이디 중복확인 조회
   public int searchId(String jmId)
   {
      int result = 0;
      IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
      
      result = dao.searchId(jmId);
      return result;
   }
   
   // 닉네임 중복확인 조회
   public int searchNick(String jmNickName)
   {
      int result = 0;
      IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
      
      result = dao.searchNick(jmNickName);
      return result;
   }
  

	@Transactional
	public int join(MemberDTO dto)
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		String memSid = dao.getMemSid(); // 난수 생성
		dto.setMemSid(memSid); // dto에 생성된 난수 MEM_SID set
		
		dao.add(memSid); // member 테이블에 MEM_SID insert
		
		int result = dao.join(dto); // JOIN_MEMBER 테이블에 회원가입 데이터 INSERT

		return result;
	}
	
	
	
	

}
