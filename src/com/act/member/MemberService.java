package com.act.member;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;
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
		
		dto.setMemSid(strNum);
		dao.join(dto);
		
		session.setAttribute("memberId", dto.getMemSid());
		
	}
	
	// 랜덤 알파벳 + 숫자 난수 발생 코드
	/*
	private String randomNum()
	{	
		String result = "";
		
		int leftLimit = 48;
		int rightLimit = 122;
		int targetStringLength = 10;
		
		Random random = new Random();
		
		result = random.ints(leftLimit, rightLimit + 1)
						.filter(i -> (i <= 57 || i >= 65) && (i <= 90 || i >= 97))
						.limit(targetStringLength)
						.collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
						.toString();
		
		return result;
	}
	*/

	public int checkId(String jmId)
	{
		int result = 0;
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		result = dao.searchId(jmId);
		
		return result;
	}
	
}
