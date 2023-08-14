package com.act.sitting;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

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

	/*
	 * // 펫시터의 등급과 기본가격 정보 public ArrayList<SittingDTO> gradeList(SittingDTO dto) {
	 * ArrayList<SittingDTO> grade = new ArrayList<SittingDTO>();
	 * System.out.println("petmemsid : " + dto.getPmemSid()); ISittingDAO dao =
	 * sqlSession.getMapper(ISittingDAO.class); grade = dao.gradeList();
	 * 
	 * return grade; }
	 */

	// 해당 돌봄장소의 태그들 가져오기
	
	  public ArrayList<SittingDTO> tagList() 
	  { 
		  ArrayList<SittingDTO>
		  tagList = new ArrayList<SittingDTO>();
		  
		  ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		  
		  tagList = dao.tagList();
		  
		  return tagList; 
	  }
	  
	 


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
	
	// 펫시팅 리스트 검색조건 리스트  반환
	@Override
	public ArrayList<SittingDTO> sittingFilterList(SittingDTO dto)
	{
		ArrayList<SittingDTO> filterlist = new ArrayList<SittingDTO>();
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		filterlist = dao.spfilterlist(dto);
		
		
		return filterlist;
	}
	
	
	
	// << 미완>>
	  // 펫시팅 리스트 태그 검색조건 리스트 반환
	  @Override public ArrayList<SittingDTO> sittingFilterTagList(SittingDTO dto) 
	  {
		  ArrayList<SittingDTO> filtertaglist = new ArrayList<SittingDTO>();
		  ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		  System.out.println("서비스단 dao 불러온다ㅜ제바류ㅠㅠㅠ"); 
		  filtertaglist = dao.spFilterTagList(dto);
		  
		  for(SittingDTO s : filtertaglist)
		  {
			  System.out.println("내가 검색하는 태그들을 가지고 있는 돌봄장소의 모든 태그 : " + s.getIsptName());
		  }
		  
		  
		  return filtertaglist;
	  
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
	
	// 펫시터 자격 테스트 과정
	@Transactional
	public ArrayList<SittingQuestionDTO> sittingTest(String memSid)
	{
		ArrayList<SittingQuestionDTO> question = new ArrayList<>();
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		// 약관동의시 접수함 insert
		dao.addTestRevice(memSid);
		
		// 접수번호 가져오기
		int strsid = dao.receiveNum();
		
		// 문제 은행에서 문제 가져오기
		question = dao.questionSittingList();
		
		// 가져온 문제를 시험지 테이블에 넣기
		dao.addSittingQuestion(strsid);
		
		// 사용자의 점수를 합산하여 합격 범례테이블에서 점수를 비교
		
		return question;
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
	
	// 견주로서 오늘 펫시팅 예약 취소된 내역
	@Override
	public ArrayList<SittingDTO> memSittingCancelToday(String memSid)
	{
		ArrayList<SittingDTO> result = new ArrayList<SittingDTO>();
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		result = dao.memSittingCancelToday(memSid);
		
		return result;
	}
	
	// 펫시터로서 오늘 달린 펫시팅 후기들
	@Override
	public ArrayList<SittingDTO> sittingReviewToday(String memSid)
	{
		ArrayList<SittingDTO> result = new ArrayList<SittingDTO>();
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		result = dao.sittingReviewToday(memSid);
		
		return result;
	}

	// 펫시터로서 오늘 반려당한 펫시팅 돌봄장소
	@Override
	public ArrayList<SittingDTO> sittingCompanionToday(String memSid)
	{
		ArrayList<SittingDTO> result = new ArrayList<SittingDTO>();
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		result = dao.sittingCompanionToday(memSid);
		
		return result;
	}
	
	// 견주입장에서 본인이 오늘 결제한 펫시팅의 시작일 ~ 종료일
	@Override
	public ArrayList<SittingDTO> memSittingBookToday(String memSid)
	{
		ArrayList<SittingDTO> result = new ArrayList<SittingDTO>();
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		result = dao.memSittingBookToday(memSid);
		
		return result;
	}
	
	// 펫시터로서 오늘 들어온 예약의 시작일 ~ 종료일
	@Override
	public ArrayList<SittingDTO> sittingBookToday(String memSid)
	{
		ArrayList<SittingDTO> result = new ArrayList<SittingDTO>();
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		result = dao.sittingBookToday(memSid);
		
		return result;
	}
		
	// SRWSID 로 후기 한 건 조회
	@Override
	public SittingDTO sittingReview(int srwSid)
	{
		SittingDTO result = new SittingDTO();
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		result = dao.sittingReview(srwSid);
		
		return result;
	}

		// 펫시터 팔로잉 탑 3 SPH_SID와 팔로잉 수, 회원번호, 등급, 닉네임, 펫시터식별번호, 돌봄장소번호, 후기 수, 별점, 타임라인 종료 수 조회
	@Override
	public ArrayList<SittingDTO> sittingFollowingRank()
	{
		ArrayList<SittingDTO> result = new ArrayList<SittingDTO>();
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		result = dao.sittingFollowingRank();
		
		return result;
	}

		
	
		
		
		
		
		
		
	
}