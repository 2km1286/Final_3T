package com.act.manager;


import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.act.manager.IManagerDAO;
import com.act.manager.IManagerService;
import com.act.member.MemberDTO;


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
	public ArrayList<ManagerDTO> sittingReportList()
	{
		ArrayList<ManagerDTO> result = new ArrayList<ManagerDTO>();
		
		IManagerDAO dao = sqlSession.getMapper(IManagerDAO.class);
		result = dao.sittingReportList();
		
		return result;
		
	}
	
	// 펫시팅 신고 현안 리스트
	public ArrayList<ManagerDTO> sittingCompleteList()
	{
		ArrayList<ManagerDTO> result = new ArrayList<ManagerDTO>();
		
		IManagerDAO dao = sqlSession.getMapper(IManagerDAO.class);
		result = dao.sittingCompleteList();
		
		return result;
		
	}
	// 대리산책 신고 현안 리스트
	public ArrayList<ManagerDTO> walkReportList()
	{
		ArrayList<ManagerDTO> result = new ArrayList<ManagerDTO>();
		
		IManagerDAO dao = sqlSession.getMapper(IManagerDAO.class);
		result = dao.walkReportList();
		
		return result;
		
	}
	
	// 프로필 신고내역
	public ArrayList<ManagerDTO> profileReportList()
	{
		ArrayList<ManagerDTO> result = new ArrayList<ManagerDTO>();
		
		IManagerDAO dao = sqlSession.getMapper(IManagerDAO.class);
		result = dao.profileReportList();
		
		return result;
		
	}
	// 펫시팅 돌봄 장소 비활성화
	public int updateSittingPublic(ManagerDTO dto)
	{
		int result = 0;
		
		IManagerDAO dao = sqlSession.getMapper(IManagerDAO.class);
		result = dao.updateSittingPublic(dto);
		
		return result;
		
	}
	// 대리산책 공고 비활성화
	public int updateWalkPublic(ManagerDTO dto)
	{
		int result = 0;
		
		IManagerDAO dao = sqlSession.getMapper(IManagerDAO.class);
		result = dao.updateWalkPublic(dto);
		return result;
		
	}
	
	// 펫시팅 반려(신고접수에 삭제)
	public int deleteSittingReport(ManagerDTO dto)
	{
		int result = 0;
		IManagerDAO dao = sqlSession.getMapper(IManagerDAO.class);
		result = dao.deleteSittingReport(dto);
		return result;
	}
	// 대리산책 반려(신고접수에 삭제)
	public int deleteWalkReport(ManagerDTO dto)
	{
		int result = 0;
		IManagerDAO dao = sqlSession.getMapper(IManagerDAO.class);
		result = dao.deleteWalkReport(dto);
		return result;
	}
	// 프로필 반려(신고접수에 삭제)
	public int deleteProfileReport(ManagerDTO dto)
	{
		int result = 0;
		IManagerDAO dao = sqlSession.getMapper(IManagerDAO.class);
		result = dao.deleteProfileReport(dto);
		return result;
	}
	
	
	

	
	
	

	

}
