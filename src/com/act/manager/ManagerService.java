package com.act.manager;


import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.act.manager.IManagerDAO;
import com.act.manager.IManagerService;


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
	
	// 아직 신고처리안된 펫시팅 신고접수 갯수
	public int sittingSearchEmerg()
	{
		int result=0;
		
		IManagerDAO dao = sqlSession.getMapper(IManagerDAO.class);
		result = dao.sittingSearchEmerg();
		return result;
		
	}
	
	// 아직 신고처리안된 대리산책 신고접수 갯수
	public int walkSearchEmerg()
	{
		int result=0;
		
		IManagerDAO dao = sqlSession.getMapper(IManagerDAO.class);
		result = dao.walkSearchEmerg();
		return result;
		
	}
	
	// 로그인 시 mi_sid 로 관리자 이름 찾기
	public String searchManagerName(String str)
	{
		String result="";
		
		IManagerDAO dao = sqlSession.getMapper(IManagerDAO.class);
		result = dao.searchManagerName(str);
		return result;
		
	}
	
	// 펫시팅 신고 현안 리스트
	public ArrayList<ManagerDTO> sittingReportList(ManagerDTO dto)
	{
		ArrayList<ManagerDTO> result = new ArrayList<ManagerDTO>();
		
		IManagerDAO dao = sqlSession.getMapper(IManagerDAO.class);
		result = dao.sittingReportList(dto);
		return result;
		
	}
	
	
	

	

}
