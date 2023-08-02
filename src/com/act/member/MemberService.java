package com.act.member;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService
{
	@Autowired
	private SqlSession sqlSession;
	
	// 아이디 비밀번호로 memSid 조회하기
	public String searchMemsid(JoinMemberDTO dto)
	{
		String result = "";
		
		IJoinMemberDAO dao = sqlSession.getMapper(IJoinMemberDAO.class);
		
		result = dao.searchMemsid(dto);
		
		return result;
		
	}
	
	// 이름, 주민번호로 아이디 찾기
	public String idFind(JoinMemberDTO dto)
	{
		String result = "";
		
		IJoinMemberDAO dao = sqlSession.getMapper(IJoinMemberDAO.class);
		
		result = dao.findId(dto);
		
		return result;
	}
	
	
	
}
