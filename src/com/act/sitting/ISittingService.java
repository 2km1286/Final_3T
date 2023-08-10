package com.act.sitting;

import java.util.ArrayList;

public interface ISittingService
{
	public ArrayList<SittingDTO> list();
	public ArrayList<SittingDTO> IndexTagList();
	public ArrayList<SittingDTO> gradeList(SittingDTO dto);
	//public ArrayList<SittingDTO> tagList(String memSid);
	public ArrayList<SittingDTO> booklist(String memSid);
	public ArrayList<SittingDTO> sittingFilterList(SittingDTO dto);
}
