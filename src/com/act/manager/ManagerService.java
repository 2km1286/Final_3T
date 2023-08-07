package com.act.member;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ManagerService implements IManagerService
{
	
	 @Autowired private SqlSession sqlSession;

	// 아이디 비밀번호로 memSid 조회하기
	public String searchMansid(ManagerDTO dto)
	{
		String result = "";

		IManagerDAO dao = sqlSession.getMapper(IManagerDAO.class);
		result = dao.searchMansid(dto);
		return result;

	}
	

	

}
