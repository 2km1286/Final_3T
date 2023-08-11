package com.act.sitting;

import java.util.ArrayList;
import java.util.List;

public interface ISittingService
{
	public ArrayList<SittingDTO> list();
	public ArrayList<SittingDTO> IndexTagList();
	public ArrayList<SittingDTO> tagList();
	public ArrayList<SittingDTO> booklist(String memSid);
	public ArrayList<SittingDTO> sittingFilterList(SittingDTO dto);
	public ArrayList<SittingDTO> sittingFilterTagList(SittingDTO dto);
}
