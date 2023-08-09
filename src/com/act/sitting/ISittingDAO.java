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
	
	public ArrayList<SittingDTO> spfilterlist(String extraAddr);

}
