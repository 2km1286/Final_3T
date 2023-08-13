package com.act.walk;

import java.util.ArrayList;

public interface IWalkService
{
	public ArrayList<WalkDTO> list();

	public ArrayList<WalkDTO> IndexTagList();

	public ArrayList<WalkDTO> gradeList();

	public WalkDTO getWalkerLicenseNumber(String memSid);

	public boolean postInsert(WalkDTO dto);

	// 대리산책러로서 들어온 예약의 시작일 ~ 종료일
	public ArrayList<WalkDTO> walkBookMyPage(String memSid);

	// 대리산책러로서 나에게 달린 후기 조회
	public ArrayList<WalkDTO> walkReviews(String memSid);

	// 후기를 쓴 사람의 회원번호로 그 회원의 닉네임 조회를 위한 전체출력
	public ArrayList<WalkDTO> walkReviewers();
}
