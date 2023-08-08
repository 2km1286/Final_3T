package com.act.sitting;

import java.util.ArrayList;

public interface ISittingDAO
{
	public ArrayList<SittingDTO> list();
	public ArrayList<SittingDTO> IndexTagList();
	public ArrayList<SittingDTO> gradeList();
	//public ArrayList<SittingDTO> tagList(String memSid);
	public SittingDTO mybooklist();
}
