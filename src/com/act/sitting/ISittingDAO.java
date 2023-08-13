package com.act.sitting;

import java.util.ArrayList;

public interface ISittingDAO
{
	public ArrayList<SittingDTO> list();
	public ArrayList<SittingDTO> IndexTagList();
	public ArrayList<SittingDTO> gradeList();
	//public ArrayList<SittingDTO> tagList(String memSid);

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
	public int addSittingQuestion(int strsid);
}
