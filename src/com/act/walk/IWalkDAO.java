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
	
}
