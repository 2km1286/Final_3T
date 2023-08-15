package com.act.sitting;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import com.act.walk.IWalkDAO;
import com.act.walk.WalkDTO;

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
		System.out.println(memSid);
		
		// 접수번호 가져오기
		int strsid = dao.receiveNum();
		System.out.println(strsid);
		
		// 문제 은행에서 문제 가져오기
		question = dao.questionSittingList();
		
		
		SittingQuestionDTO dto = new SittingQuestionDTO();
		
		// 가져온 문제를 시험지 테이블에 넣기
		dto.setMemSid(memSid);
		dto.setStrsid(strsid);
		
		dto.setStbsid1(question.get(0).getStbsid());  
		dto.setStbsid2(question.get(1).getStbsid());	
		dto.setStbsid3(question.get(2).getStbsid());
		dto.setStbsid4(question.get(3).getStbsid());
		dto.setStbsid5(question.get(4).getStbsid());
		dto.setStbsid6(question.get(5).getStbsid());
		dto.setStbsid7(question.get(6).getStbsid());
		dto.setStbsid8(question.get(7).getStbsid());
		dto.setStbsid9(question.get(8).getStbsid());
		dto.setStbsid10(question.get(9).getStbsid());
			
		dao.addSittingQuestion(dto);
		
		/* 테스트
		System.out.println(question.get(0).getStbsid() + "문제1");
		System.out.println(question.get(1).getStbsid() + "문제2");
		System.out.println(question.get(2).getStbsid() + "문제3");
		System.out.println(question.get(3).getStbsid() + "문제4");
		System.out.println(question.get(4).getStbsid() + "문제5");
		System.out.println(question.get(5).getStbsid() + "문제6");
		System.out.println(question.get(6).getStbsid() + "문제7");
		System.out.println(question.get(7).getStbsid() + "문제8");
		System.out.println(question.get(8).getStbsid() + "문제9");
		System.out.println(question.get(9).getStbsid() + "문제10");
		*/
		
		ArrayList<String> list = new ArrayList<>();
		list.add(question.get(0).getStbanswer());
		list.add(question.get(1).getStbanswer());
		list.add(question.get(2).getStbanswer());
		list.add(question.get(3).getStbanswer());
		list.add(question.get(4).getStbanswer());
		list.add(question.get(5).getStbanswer());
		list.add(question.get(6).getStbanswer());
		list.add(question.get(7).getStbanswer());
		list.add(question.get(8).getStbanswer());
		list.add(question.get(9).getStbanswer());
		
		/* 테스트
		System.out.println("result : " + question.get(0).getStbanswer() + "1");
		System.out.println("result : " + question.get(1).getStbanswer() + "2");
		System.out.println("result : " + question.get(2).getStbanswer() + "3");
		System.out.println("result : " +question.get(3).getStbanswer() + "4");
		System.out.println("result : " +question.get(4).getStbanswer() + "5");
		System.out.println("result : " +question.get(5).getStbanswer() + "6");
		System.out.println("result : " +question.get(6).getStbanswer() + "7");
		System.out.println("result : " +question.get(7).getStbanswer() + "8");
		System.out.println("result : " +question.get(8).getStbanswer() + "9");
		System.out.println("result : " +question.get(9).getStbanswer() + "10");
		*/
		
		dto.setAnswer(list);
		return question;
	}
	
	
	// 사용자의 제출한 점수에 합격 불합격 처리
	public SittingQuestionDTO gradeQuiz(String[] userAnswers, String memSid) 
	{
		SittingQuestionDTO result = new SittingQuestionDTO();
		
	    ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
	    
	    ArrayList<SittingQuestionDTO> question = sittingTest(memSid);
	    result.setJmnickname(dao.searchNick(memSid));
	    
	    int passScore = dao.sittingPassScore();
	    int totalScore = 0;
	    
	    for (int i = 0; i < question.size(); i++) 
	    {
	    	System.out.println(question.get(i).getStbanswer().equals(userAnswers[i]) + "GGGGG");
	      if (question.get(i).getStbanswer().equals(userAnswers[i])) 
	        totalScore += question.get(i).getStbpoint();
	     }
	    
	    result.setTotalScore(totalScore); // 총 점수 
	    result.setSpcstandard(passScore); // 합격 점수
	    
	 	//return totalScore >= passScore; // 채점 결과 반환
	    
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

	@Override
	public SittingDTO sittingPopup(String memSid) 
	{
		SittingDTO result = new SittingDTO();
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		result = dao.sittingPopup(memSid);
		
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

		
	
	@Override
	public SittingDTO listPublicByMemSid(String memSid)
	{
		SittingDTO listPublicByMemSid = new SittingDTO();
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		listPublicByMemSid = dao.listPublicByMemSid(memSid);
		
		return listPublicByMemSid;
		
	}
	
	// 돌봄장소의 휴일들
	@Override
	public ArrayList<SittingDTO> spRest(String memSid)
	{
		ArrayList<SittingDTO> restList = new ArrayList<SittingDTO>();
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		restList = dao.spRest(memSid);
		
		return restList;
	}
	
	
	/*
	 * // 펫시팅 예약화면용 돌봄장소의 후기들(spSid를 가지고 조회)
	 * 
	 * @Override public ArrayList<SittingDTO> sittingReviewsBySpSid(int spSid) {
	 * ArrayList<SittingDTO> reviews = new ArrayList<SittingDTO>(); ISittingDAO dao
	 * = sqlSession.getMapper(ISittingDAO.class); reviews =
	 * dao.sittingReviewsBySpSid(spSid);
	 * 
	 * return reviews; }
	 */
	
	// 펫시팅 돌봄장소의 후기의 사진들 조회(후기러의 닉네임 포함)
	@Override
	public ArrayList<SittingDTO> sittingReviewsPhoto()
	{
		ArrayList<SittingDTO> reviewsPhoto = new ArrayList<SittingDTO>();
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		reviewsPhoto = dao.sittingReviewsPhoto();
		return reviewsPhoto;
	}
		
	
	@Override
	public ArrayList<SittingDTO> sittingPlaceTagsByMemSid(String memSid)
	{
		ArrayList<SittingDTO> tagList = new ArrayList<SittingDTO>();
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		tagList = dao.sittingPlaceTagsByMemSid(memSid);
		return tagList;
	}
	
	@Override
	public SittingDTO sittingSrwRate(String memSid)
	{
		SittingDTO sittingSrwRate = new SittingDTO();
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		sittingSrwRate = dao.sittingSrwRate(memSid);
		return sittingSrwRate;
	}
	
	
	@Override
	public ArrayList<SittingDTO> sittingSrwRates()
	{
		ArrayList<SittingDTO> sittingSrwRates = new ArrayList<SittingDTO>();
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		sittingSrwRates = dao.sittingSrwRates();
		
		return sittingSrwRates;
	}
	
	@Override
	public ArrayList<SittingDTO> petListByMemSid(String pMemSid)
	{
		ArrayList<SittingDTO> petList = new ArrayList<SittingDTO>();
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		petList = dao.petListByMemSid(pMemSid);
		
		return petList;
	}

	// 등록한 돌봄장소가 있는지 카운트
	@Override
	public int spCount(SittingDTO dto)
	{
		int result= 0;
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		result = dao.spCount(dto);
		
		return result;
	}

	// 돌봄장소 등록
	@Transactional
	public boolean insertPlcae(SittingDTO dto)
	{
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		try
		{
			
			System.out.println( "컨트롤러에서 넘어왔나? :" + dto.getSpSid() + " / " + dto.getSptitle() + " / " + dto.getSpContent() + " / " +   dto.getSpAddr1()
		    + " / " + dto.getSpAddr2() + " / " + dto.getSpZipCode() + " / " + dto.getSpMaxPet() + " / " 
		    + " / " + dto.getIpSid() + " / " + dto.getExtraAddr() );
			
			
			String sppName = dto.getSppName();
			String sppPath = dto.getSppPath();
			
			
			// 1. spSid를 제외한 모든 값을 담은 sittingDTO를 SITTING_PLACE 에 인서트. 돌봄장소 등록 spSid가 생김
			dao.insertPlcae(dto);
			
			// 2. 새로 생긴 spSid 를 조회, sittingDTO 에 set하기
		   	dto.setSpSid( dao.spSidMax());
		   	
			// 3. SITTING_PLACE_HUB 에 sittingDTO 를 인서트
			dao.insertPlaceHub(dto);
		   	
			// 4. SITTING_PLACE_PHOTO 에 sittingDTO 를 인서트
			dto.setSppPath(sppPath);
		    dto.setSppName(sppName);
		    dao.insertPlacePhoto(dto);
			
			// 5. SITTING_PLACE_TAG 에 sittingDTO 를 인서트
		    List<String> selectedTags = dto.getSelectedTags();
		    for (String tagId : selectedTags) 
		    {
		    	dto.setIsptSid(Integer.parseInt(tagId));
		    	dao.insertPlaceTag(dto);
		    }

		    return true;
			
		} catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		
		
	}
		
		
	public int slSid(String memSid)
	{
		int result= 0;
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		result = dao.slSid(memSid);
		
		return result;
		
	}
	
	
	
	
	
	
	
}