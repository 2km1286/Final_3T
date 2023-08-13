package com.act.walk;

import java.util.ArrayList;

public interface IWalkDAO
{
	public ArrayList<WalkDTO> list();
	public ArrayList<WalkDTO> IndexTagList();
	public ArrayList<WalkDTO> gradeList();
	public WalkDTO getWalkerLicenseNumber(String memSid);
	
	// 이것을 하나의 트랜잭션으로 처리
	// 문제를 랜덤으로 가져오기
	public ArrayList<QuestionDTO> questionList(); 
	// 그렇다면 문제 은행에서 문제를 10개를 받아오고 문제지 시험지에 sid를 insert 
	public int addQuestion(int wtrsid, ArrayList<QuestionDTO> questions);
	
	public int insertPost(WalkDTO dto);
	public int insertPostPhoto(WalkDTO dto);
	public int insertWalkPostTag(WalkDTO dto);
	public int selectWpsid();
	
	// 견주로서 오늘 대리산책 예약 취소된건
	public ArrayList<WalkDTO> memWalkCancelToday(String memSid);
	
	// 대리산책러로서 오늘 달린 대리산책 후기들
	public ArrayList<WalkDTO> walkReviewToday(String memSid);
	
	// 대리산책러로서 오늘 반려당한 대리산책 공고글
	public ArrayList<WalkDTO> walkCompanionToday(String memSid);
	
	// 견주입장에서 본인이 오늘 결제한 대리산책의 시작일 ~ 종료일
	public ArrayList<WalkDTO> memWalkBookToday(String memSid);
	
	// 대리산책러로서 오늘 들어온 예약의 시작일 ~ 종료일
	public ArrayList<WalkDTO> walkBookToday(String memSid);
	
	// 대리산책러로서 들어온 예약의 시작일 ~ 종료일
	public ArrayList<WalkDTO> walkBookMyPage(String memSid);
	
	// 대리산책러로서 나에게 달린 후기 조회
	public ArrayList<WalkDTO> walkReviews(String memSid);
		
	// 후기를 쓴 사람의 회원번호로 그 회원의 닉네임 조회를 위한 전체출력
	public ArrayList<WalkDTO> walkReviewers();
	
	
}
