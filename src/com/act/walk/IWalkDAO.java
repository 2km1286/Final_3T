package com.act.walk;

import java.util.ArrayList;

import com.act.walk.WalkDTO;

public interface IWalkDAO
{
	public ArrayList<WalkDTO> list();
	public ArrayList<WalkDTO> IndexTagList();
	public ArrayList<WalkDTO> gradeList();
	
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
	
	
	
	
	
	
}
