package com.act.sitting;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.act.walk.WalkDTO;

public interface ISittingDAO
{
	// 공개 상태인 돌봄장소들의 정보 조회
	public ArrayList<SittingDTO> list();
	
	// 펫시팅 돌봄장소의 범례태그들 조회
	public ArrayList<SittingDTO> IndexTagList();
	
	// 회원이 찜한 목록들 조회
	public ArrayList<SittingDTO> mySfollow(String memSid);
	
	// 해당 돌봄장소의 태그들 확인
	public ArrayList<SittingDTO> tagList();

	// 회원의 시험제출 유무 확인
	public int stsCount(SittingDTO dto);
	
	// 회원의 펫시터 면허번호 유무 확인
	public int slCount(SittingDTO dto);

	public ArrayList<SittingDTO> booklist(String memSid);
	
	// 펫시터 접수함 생성
	public int addTestRevice(String memSid);
	
	// 접수번호 가져오기
	public int receiveNum();
	
	// 펫시터 문제은행 가져오기
	public ArrayList<SittingQuestionDTO> questionSittingList();
	
	// 펫시터 문제지 테이블 insert
	public int addSittingQuestion(SittingQuestionDTO dto);
	
	// 펫시터 합격점수 범례테이블 조회
	public int sittingPassScore();
  
	// 회원번호로 예전~현재 돌봄장소 기본정보 조회
	public ArrayList<SittingDTO> sittingPlaceBasic(String memSid);
	
	// 돌봄공간 번호로 예약페이지에 들어갈 정보 조회
	public SittingDTO listPublicByMemSid(String memSid);
	
	// ※현재 사용하고 있는 돌봄장소※의 태그들 조회
	public ArrayList<SittingDTO> sittingPlaceTags(int spSid);
	
	// 회원번호(펫시터)로 공개상태의 태그들 조회
	public ArrayList<SittingDTO> sittingPlaceTagsByMemSid(String memSid);
	
	// 돌봄공간의 공간 사진들 조회
	public ArrayList<SittingDTO> sittingPlacePhoto();
	
	// 공간번호로 돌봄공간의 사진들 조회
	public SittingDTO sittingPlacePhotoBySpsid(int spSid);
	
	// 회원번호로 펫시터인 나에게 달린 후기 조회
	public ArrayList<SittingDTO> sittingReviews(String memSid);
	
	// 돌봄장소번호로 펫시터의 후기 사진 조회(후기러의 닉네임 포함)
	public ArrayList<SittingDTO> sittingReviewsPhoto();
	
	public SittingDTO sittingSrwRate(String memSid);
	public ArrayList<SittingDTO> sittingSrwRates();
	
	// 나에게 달린 후기를 쓴 회원번호로 그 회원의 닉네임 조회를 위한 전체출력
	public ArrayList<SittingDTO> sittingReviewers();
	
	//public ArrayList<SittingDTO> baseQuery();
	
	//public ArrayList<SittingDTO> locationQuery(SittingDTO dto); 
	
	//public ArrayList<SittingDTO> maxPetQuery(SittingDTO dto); 

	//public ArrayList<SittingDTO> searchDate(SittingDTO dto);
	
	// 펫시팅 리스트 검색 1차(지역/견수)
	public ArrayList<SittingDTO> spfilterlist(SittingDTO dto);
	
	// 펫시팅 리스트 검색 2차(태그)
	public ArrayList<SittingDTO> spFilterTagList(SittingDTO dto);
	
	// 견주로서 오늘 펫시팅 예약 취소된건
	public ArrayList<SittingDTO> memSittingCancelToday(String memSid);
	
	// 펫시터로서 오늘 달린 펫시팅 후기들
	public ArrayList<SittingDTO> sittingReviewToday(String memSid);
	
	// 펫시터로서 오늘 반려당한 펫시팅 돌봄장소
	public ArrayList<SittingDTO> sittingCompanionToday(String memSid);

	// 견주입장에서 본인이 오늘 결제한 펫시팅 예약번호
	public ArrayList<SittingDTO> memSittingBookToday(String memSid);
	
	// 펫시터로서 오늘 들어온 예약의 시작일 ~ 종료일
	public ArrayList<SittingDTO> sittingBookToday(String memSid);
	
	// SRWSID 로 후기 한 건 조회
	public SittingDTO sittingReview(int srwSid);
	

	// memSid로 멤버의 닉네임 조회
	public String searchNick(String memSid);


	// 공개상태인 돌봄장소의 휴일 조회
	public ArrayList<SittingDTO> spRest(String memSid);


	// POP-UP에 띄어질 데이터들 조회
	public SittingDTO sittingPopup(String memSid);

	
	
	// 펫시터 팔로잉 탑 3 SPH_SID와 팔로잉 수, 회원번호, 등급, 닉네임, 펫시터식별번호, 돌봄장소번호, 후기 수, 별점, 타임라인 종료 수 조회
	public ArrayList<SittingDTO> sittingFollowingRank();
	
	// 펫시터로서 오늘 수정요청당한 펫시팅 돌봄장소
	
	// 견주의 memSid로 자신이 등록한 반려견의 정보 가져오기
	public ArrayList<SittingDTO> petListByMemSid(String pMemSid);
	

	// 등록한 돌봄장소가 있는지 카운트
	public int spCount(SittingDTO dto);
	
	// 펫시터 면허번호 가져오기
	public int slSid(String memSid);
	
	// 돌봄장소 등록
	public int insertPlcae(SittingDTO dto);
	
	// 돌봄장소 제일 최신 spSid 가져오기
	public int spSidMax();
		
	// 돌봄장소 사진 등록
	public int insertPlacePhoto(SittingDTO dto);
	
	// 돌봄장소 태그 등록
	public int insertPlaceTag(SittingDTO dto);
	
	// 돌봄장소 영업시간 등록(SITTING_PLACE_HUB)
	public int insertPlaceHub(SittingDTO dto);
	

	// 펫시팅 장바구니 생성
	public int sittingCreateCart(SittingDTO dto);
	
	// 장바구니 생성의 sid 얻기
	public int sccSidMax(SittingDTO dto);
	
	// 펫시팅 장바구니 담기
	public int sittingCart(SittingDTO dto);
	
	// 펫시팅 예약 테이블 
	public int sittingBook(SittingDTO dto);

	// 펫시터 시험접수결과
	public int addTestResult(SittingQuestionDTO dto);
	
	// 펫시터 제출번호 조회
	public int submitNum();
	
	// 펫시터 면허발급
	public int createPetSitterLicense(int stssid);
	
	


	// 돌봄장소 업데이트
	public int updatePlace(SittingDTO dto);
	
	// 돌봄장소 사진 삭제
	public int deletePlacePhoto(SittingDTO dto);
	
	// 돌봄장소 태그 삭제
	public int deletePlaceTag(SittingDTO dto);
	
	// 돌봄장소 영업시간 업데이트
	public int updatePlaceHub(SittingDTO dto);
	

	
	// 펫시터 예약반려견 카드 조회
	public ArrayList<ReservationInfoDTO> petInfoList(ReservationInfoDTO dto);


	
	// 예약번호 확인
	public int getReservationNumber(String memSid);
	
	public String reservationMemsid(int sbsid);
	
	
	
	// 펫시팅 프로필 신고
	public int profileReportReceive(SittingDTO dto);
	
	// 펫시팅 돌봄공간 신고사유
	public ArrayList<SittingDTO> indexReport();
	
	// 펫시팅 돌봄공간 신고
	public int placeReportReceive(SittingDTO dto);
	
	// 정보 불러오는거 ★
	public ReservationInfoDTO getMatchingHistory(ReservationInfoDTO dto);
	
	// 예약날짜
	public ArrayList<SittingDTO> sbDates(String memSid);
	
	// 타임라인 사진 조회
	public ArrayList<SittingDTO> stlpList(int num);
	
	// 예약번호로 산책 반려견 정보 조회
	public ArrayList<SittingDTO> bookPet(int num);
	
	// 예약번호로 펫시터, 돌봄장소 조회
	public ArrayList<SittingDTO> bookSitterPlace(int num);
	
	
}