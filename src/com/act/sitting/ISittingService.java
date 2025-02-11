package com.act.sitting;

import java.util.ArrayList;
import java.util.List;

public interface ISittingService
{
	public ArrayList<SittingDTO> list();
	public ArrayList<SittingDTO> IndexTagList();
	public ArrayList<SittingDTO> sittingPlaceBasic(String memSid);
	public ArrayList<SittingDTO> sittingPlaceTags(int spSid);
	public ArrayList<SittingDTO> sittingReviews(String memSid);
	public ArrayList<SittingDTO> sittingReviewers();
	public ArrayList<SittingDTO> tagList();
	public ArrayList<SittingDTO> sittingFilterList(SittingDTO dto);
	public ArrayList<SittingDTO> sittingFilterTagList(SittingDTO dto);
	public ArrayList<SittingDTO> memSittingCancelToday(String memSid);
	public ArrayList<SittingDTO> sittingReviewToday(String memSid);
	public ArrayList<SittingDTO> sittingCompanionToday(String memSid);
	public ArrayList<SittingDTO> memSittingBookToday(String memSid);
	public ArrayList<SittingDTO> sittingBookToday(String memSid);
	public ArrayList<SittingQuestionDTO> sittingTest(String memSid);
	public SittingQuestionDTO gradeQuiz(String[] userAnswers, String memSid);
	public SittingDTO sittingReview(int srwSid);
	public int sittingStsCount(SittingDTO dto);
	public int sittingSlCount(SittingDTO dto);
	public ArrayList<SittingDTO> mySfollow(String memSid);

	public SittingDTO sittingPopup(String memSid);


	public ArrayList<SittingDTO> sittingFollowingRank();
	public SittingDTO listPublicByMemSid(String memSid);
	public ArrayList<SittingDTO> spRest(String memSid);
	public ArrayList<SittingDTO> sittingReviewsPhoto();
	public ArrayList<SittingDTO> sittingPlaceTagsByMemSid(String memSid);
	public ArrayList<SittingDTO> sittingPlacePhoto();
	public SittingDTO sittingPlacePhotoBySpsid(int spSid);
	public SittingDTO sittingSrwRate(String memSid);
	public ArrayList<SittingDTO> sittingSrwRates();
	public ArrayList<SittingDTO> petListByMemSid(String pMemSid);

	public int spCount(SittingDTO dto);
	
	// 돌봄장소 등록
	public boolean insertPlcae(SittingDTO dto);
	
	public int slSid(String memSid);
	
	public int sittingtestQualification(SittingDTO dto);
	

	// 돌봄장소 업데이트
	public boolean updatePlace(SittingDTO dto);

	public int sittingFromCreateCartToBook(SittingDTO dto);

	public ArrayList<ReservationInfoDTO> getInfo(String memsid, int sbsid);
	public int getReservationNum(String memSid);
	public String getReservationMem(int sbsid);
	public ReservationInfoDTO getMatchingHistory(String memsid, int sbsid);
	
	
	// 펫시팅 프로필 신고
	public int profileReportReceive(SittingDTO dto);
	
	// 펫시팅 돌봄공간 신고 사유
	public ArrayList<SittingDTO> indexReport();
	
	// 펫시팅 돌봄공간 신고
	public int placeReportReceive(SittingDTO dto);
	
	// 예약날짜
	public ArrayList<SittingDTO> sbDates(String memSid);
	
	// 타임라인 사진 조회
	public ArrayList<SittingDTO> stlpList(int num);
	
	// 예약번호로 산책 반려견 정보 조회
	public ArrayList<SittingDTO> bookPet(int num);
	
	// 예약번호로 펫시터, 돌봄장소 조회
	public ArrayList<SittingDTO> bookSitterPlace(int num);
	
}	

