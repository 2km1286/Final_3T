package com.act.sitting;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class SittingService implements ISittingService
{
	@Autowired
	private SqlSession sqlSession;

	// 펫시터의 정보를 리스트로 가져오기
	public ArrayList<SittingDTO> list()
	{
		ArrayList<SittingDTO> list = new ArrayList<SittingDTO>();

		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		list = dao.list();

		return list;
	}

	// 펫시터 돌봄장소 범례태그 리스트 가져오기
	public ArrayList<SittingDTO> IndexTagList()
	{
		ArrayList<SittingDTO> IndexTagList = new ArrayList<SittingDTO>();

		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		IndexTagList = dao.IndexTagList();

		return IndexTagList;
	}

	// 펫시터의 등급과 기본가격 정보
	public ArrayList<SittingDTO> gradeList()
	{
		ArrayList<SittingDTO> grade = new ArrayList<SittingDTO>();

		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		grade = dao.gradeList();

		return grade;
	}

	// 해당 돌봄장소의 태그들 가져오기
	/*
	 * public ArrayList<SittingDTO> tagList(SittingDTO s) { ArrayList<SittingDTO>
	 * tagList = new ArrayList<SittingDTO>();
	 * 
	 * ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
	 * 
	 * tagList = dao.tagList(s.getMemSid());
	 * 
	 * return tagList; }
	 */


	// 회원의 STS(시험제출번호) 유무(상태) 반환
	public int sittingStsCount(SittingDTO dto)
	{
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		//System.out.println("1번 sittingStsCount");
		int result = dao.stsCount(dto);
		//System.out.println("2번 sittingStsCount: " + result);
		return result;
	}

	// 회원의 SL(펫시팅면허번호) 유무(상태) 반환
	public int sittingSlCount(SittingDTO dto)
	{
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		//System.out.println("3번 sittingSlCount");
		int result = dao.slCount(dto);
		//System.out.println("4번 sittingSlCount: " + result);
		return result;
	}

	// 회원번호로 마이페이지에서 돌봄장소 기본정보 조회
	@Override
	public ArrayList<SittingDTO> sittingPlaceBasic(String memSid)
	{
		ArrayList<SittingDTO> result = new ArrayList<SittingDTO>();		
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		result = dao.sittingPlaceBasic(memSid);
		
		return result;
	}

	// ※현재 사용하고 있는 돌봄장소※의 태그들 조회
	@Override
	public ArrayList<SittingDTO> sittingPlaceTags(int spSid)
	{
		ArrayList<SittingDTO> result = new ArrayList<SittingDTO>();
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		result = dao.sittingPlaceTags(spSid);
		
		return result;
	}

	// 회원번호로 펫시터인 나에게 달린 후기 조회
	@Override
	public ArrayList<SittingDTO> sittingReviews(String memSid)
	{
		ArrayList<SittingDTO> result = new ArrayList<SittingDTO>();
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		result = dao.sittingReviews(memSid);
		
		return result;
	}
	
	// 나에게 달린 후기를 쓴 회원번호로 그 회원의 닉네임 조회
	@Override
	public ArrayList<SittingDTO> sittingReviewers()
	{
		ArrayList<SittingDTO> result = new ArrayList<SittingDTO>();
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		result = dao.sittingReviewers();
		
		return result;
	}

	
	
}
