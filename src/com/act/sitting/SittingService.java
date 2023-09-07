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
	
	ArrayList<SittingQuestionDTO> questions = new ArrayList<>();

	// 펫시터의 정보를 리스트로 가져오기
	public ArrayList<SittingDTO> list()
	{
		ArrayList<SittingDTO> list = new ArrayList<SittingDTO>();

		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		list = dao.list();
		
		

		return list;
	}
	
	// 내가 찜한 펫시터들 목록 보기
	public ArrayList<SittingDTO> mySfollow(String memSid)
	{
		ArrayList<SittingDTO> list = new ArrayList<SittingDTO>();

		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		list = dao.mySfollow(memSid);

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
	
	// 펫시터 자격 여부
	public int sittingtestQualification(SittingDTO dto)
	{
		int result = 0;
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		result = dao.slCount(dto);
		return result;
	}
	
	
	// 펫시터 자격 테스트 과정
	@Transactional
	public ArrayList<SittingQuestionDTO> sittingTest(String memSid)
	{
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		// 약관동의시 접수함 insert
		dao.addTestRevice(memSid);				// 접수함 테이블에 접수번호, 멤버번호가 있음
		
		// 접수번호 가져오기
		int strsid = dao.receiveNum();			// 위에 있는 접수번호를 가져옴
		System.out.println("1 : " + strsid);
		
		// 문제 은행에서 문제 가져오기
		questions = dao.questionSittingList();  // 랜덤으로 문제 10개를 가져옴
		
		SittingQuestionDTO dto = new SittingQuestionDTO();
		
		// 가져온 문제를 시험지 테이블에 넣기	// petsitting-test-paper
		dto.setMemSid(memSid);					// dto에 해당 세션의 회원번호와
		dto.setStrsid(strsid);					// 접수번호 
		
		dto.setStbsid1(questions.get(0).getStbsid());  
		dto.setStbsid2(questions.get(1).getStbsid());	
		dto.setStbsid3(questions.get(2).getStbsid());
		dto.setStbsid4(questions.get(3).getStbsid());
		dto.setStbsid5(questions.get(4).getStbsid());
		dto.setStbsid6(questions.get(5).getStbsid());
		dto.setStbsid7(questions.get(6).getStbsid());
		dto.setStbsid8(questions.get(7).getStbsid());
		dto.setStbsid9(questions.get(8).getStbsid());
		dto.setStbsid10(questions.get(9).getStbsid());
			
		dao.addSittingQuestion(dto);
		
		ArrayList<String> list = new ArrayList<>();
		list.add(questions.get(0).getStbanswer());
		list.add(questions.get(1).getStbanswer());
		list.add(questions.get(2).getStbanswer());
		list.add(questions.get(3).getStbanswer());
		list.add(questions.get(4).getStbanswer());
		list.add(questions.get(5).getStbanswer());
		list.add(questions.get(6).getStbanswer());
		list.add(questions.get(7).getStbanswer());
		list.add(questions.get(8).getStbanswer());
		list.add(questions.get(9).getStbanswer());
		 
		dto.setAnswer(list);
		
		return questions;	
		
	}
	
	
	// 사용자의 제출한 점수, 문제은행의 번호를 가져옴
	@Transactional
	public SittingQuestionDTO gradeQuiz(String[] userAnswers, String memSid) 
	{	
		SittingQuestionDTO result = new SittingQuestionDTO();

	    ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
	  
	    result.setJmnickname(dao.searchNick(memSid));
	    
	    int passScore = dao.sittingPassScore();
	    int totalScore = 0;
	    
	    for (int i = 0; i < questions.size(); i++) 
	    {
	      if (questions.get(i).getStbanswer().equals(userAnswers[i])) 
	        totalScore += questions.get(i).getStbpoint();
	     }
	    
	    result.setTotalScore(totalScore); // 총 점수 
	    result.setSpcstandard(passScore); // 합격 점수
	   
	    int strsid = dao.receiveNum(); 
	    
	    result.setStrsid(strsid);
	    result.setTotalScore(totalScore);
	    
	    dao.addTestResult(result);
	  
	    int stssid = dao.submitNum();
	    
	    if(totalScore >= passScore)
	    {
	    	result.setIspassed(true);
	    	// 펫시터 면허발급 -> 제출번호 insert
	    	dao.createPetSitterLicense(stssid);	
	    }
	 
	    return result;
	 }
	
	
	// 예약정보 조회 
	@Override
	public ArrayList<ReservationInfoDTO> getInfo(String memsid, int sbsid)
	{
		ArrayList<ReservationInfoDTO> result = new ArrayList<>();
		ReservationInfoDTO dto = new ReservationInfoDTO();
		
		dto.setMemsid(memsid);
		dto.setSbsid(sbsid);
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		result = dao.petInfoList(dto);
		
		return result;
	}
	
	// 예약번호 조회
	@Override
	public int getReservationNum(String memSid)
	{
		int result = 0;
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		result = dao.getReservationNumber(memSid);
		return result;
	}
	
	// 견주인지 펫시터인지 확인하기위한 memsid 조회
	@Override
	public String getReservationMem(int sbsid)
	{
		String result = "";
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		result = dao.reservationMemsid(sbsid);
		
		return result;
	}
	
	@Override
	public ReservationInfoDTO getMatchingHistory(String memsid, int sbsid)
	{
		ReservationInfoDTO result = new ReservationInfoDTO();
		System.out.println(result);
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		result.setMemsid(memsid);
		System.out.println(result.getMemsid());
		result.setSbsid(sbsid);
		System.out.println(result.getSbsid());
		
		result = dao.getMatchingHistory(result);
		
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

	// 장바구니 생성, 담기, 예약완료 테이블 3개 INSERT
	@Transactional
	public int sittingFromCreateCartToBook(SittingDTO dto)
	{
		int result = 0;
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		int createCart = 0;
		int cart = 0;
		int book = 0;
		
		System.out.println("sittingService시작-----------------------------------------------------------");
		
		// 1. 장바구니 생성 테이블
		createCart = dao.sittingCreateCart(dto);
		
		// 2. 견주가 만든 최신 SCC_SID 가져오기
		dto.setSccSid(dao.sccSidMax(dto));
		
		// 3. 펫 반복문으로 넣어야 함.
		for (int sid : dto.getSelectedPetsSid())
		{
			System.out.println("몇 번 도니?");
			dto.setPetSid(sid);
			cart = dao.sittingCart(dto);
		}
		System.out.println("sbStart : " + dto.getSbStart());
		System.out.println("sbEnd : " + dto.getSbEnd());
		// 4. 예약테이블 insert
		result = dao.sittingBook(dto);
		
		
		System.out.println("createCart : " + createCart);
		System.out.println("cart : " + cart);
		System.out.println("book : " + result);
		System.out.println("3개테이블 인서트 완료------------------------------------------------------");
		
		return result;
	}
		
	

	// 돌봄장소 등록
	@Transactional
	public boolean insertPlcae(SittingDTO dto)
	{
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		try
		{
			
			//System.out.println( "컨트롤러에서 넘어왔나? :" + dto.getSpSid() + " / " + dto.getSptitle() + " / " + dto.getSpContent() + " / " +   dto.getSpAddr1()
		    //+ " / " + dto.getSpAddr2() + " / " + dto.getSpZipCode() + " / " + dto.getSpMaxPet() + " / " 
		    //+ " / " + dto.getIpSid() + " / " + dto.getExtraAddr() );
			
			
			String sppName = dto.getSppName();
			String sppPath = dto.getSppPath();
			
			
			// 1. spSid를 제외한 모든 값을 담은 sittingDTO를 SITTING_PLACE 에 인서트. 돌봄장소 등록 spSid가 생김
			dao.insertPlcae(dto);
			
			// 2. 새로 생긴 spSid 를 조회, sittingDTO 에 set하기
		   	dto.setSpSid( dao.spSidMax());
		   	
			// 3. SITTING_PLACE_HUB 에 sittingDTO 를 인서트
			dao.insertPlaceHub(dto);
		   	
			// 4. SITTING_PLACE_PHOTO 에 sittingDTO 를 인서트
			/*
			dto.setSppPath(sppPath);
		    dto.setSppName(sppName);
		    dao.insertPlacePhoto(dto);
		    */
			
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
		
	// memSid로 펫시터 면허번호 조회	
	public int slSid(String memSid)
	{
		int result= 0;
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		result = dao.slSid(memSid);
		
		return result;
		
	}
	
	// 돌봄장소 업데이트
	@Transactional
	public boolean updatePlace(SittingDTO dto)
	{
		
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		
		try
		{
			
			//System.out.println( "컨트롤러에서 넘어왔나? :" + dto.getSpSid() + " / " + dto.getSpSid() + " / " + dto.getSptitle() 
			// + " / " + dto.getSpContent() + " / " +   dto.getSpAddr1() + " / " + dto.getSpAddr2() + " / " + dto.getSpZipCode() 
			// + " / " + dto.getSpMaxPet() + " / " + " / " + dto.getIpSid() + " / " + dto.getExtraAddr() );
			
			String sppName = dto.getSppName();
			String sppPath = dto.getSppPath();
			
			
			// 1. 모든 값을 담은 sittingDTO로 SITTING_PLACE 를 업데이트
			dao.updatePlace(dto);
			
			// 2. 모든 값을 담은 sittingDTO로 SITTING_PLACE_HUB 를 업데이트
			dao.updatePlaceHub(dto);
		   	
			// 3. 모든 값을 담은 sittingDTO로 SITTING_PLACE_PHOTO 에 행을 삭제
			dao.deletePlacePhoto(dto);
			
			// 4. 모든 값을 담은 sittingDTO로 SITTING_PLACE_PHOTO 에 인서트
			/*
			dto.setSppPath(sppPath);
		    dto.setSppName(sppName);
		    dao.insertPlacePhoto(dto);
		    */
			
			// 5. 모든 값을 담은 sittingDTO로 SITTING_PLACE_TAG 에 행을 삭제
		    dao.deletePlaceTag(dto);
		    
		    // 6. 모든 값을 담은 sittingDTO로 SITTING_PLACE_TAG 에 인서트
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
	
	
	// 펫시터 프로필 신고
	public int profileReportReceive(SittingDTO dto)
	{
		int result = 0;
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		result = dao.profileReportReceive(dto);
		return result;
	}
	
	// 펫시터 돌봄공간 신고사유
	public ArrayList<SittingDTO> indexReport()
	{
		ArrayList<SittingDTO> irList = new ArrayList<SittingDTO>();
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		irList = dao.indexReport();
		
		return irList;
	}
	
	// 펫시터 돌봄공간 신고
	public int placeReportReceive(SittingDTO dto)
	{
		int result = 0;
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		result = dao.placeReportReceive(dto);
		
		return result;
	}
	
	// 예약날짜
	public ArrayList<SittingDTO> sbDates(String memSid)
	{
		ArrayList<SittingDTO> sbList = new ArrayList<SittingDTO>();
		ISittingDAO dao = sqlSession.getMapper(ISittingDAO.class);
		sbList = dao.sbDates(memSid);
		
		return sbList;
		
	}
	
	
	
}