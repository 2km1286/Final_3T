package com.act.sitting;

import java.util.ArrayList;
import java.util.List;

public interface ISittingDAO
{
	public ArrayList<SittingDTO> list();
	public ArrayList<SittingDTO> IndexTagList();
	public ArrayList<SittingDTO> gradeList();
	public ArrayList<SittingDTO> tagList();

	// 회원의 시험제출 유무 확인
	public int stsCount(SittingDTO dto);
	
	// 회원의 펫시터 면허번호 유무 확인
	public int slCount(SittingDTO dto);

	public ArrayList<SittingDTO> booklist(String memSid);
	
	public ArrayList<SittingDTO> spfilterlist(SittingDTO dto);
	
	public ArrayList<SittingDTO> spFilterTagList(SittingDTO dto);

}
