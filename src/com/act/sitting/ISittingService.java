package com.act.sitting;

import java.util.ArrayList;
import java.util.List;

public interface ISittingService
{
	public ArrayList<SittingDTO> list();
	public ArrayList<SittingDTO> IndexTagList();
	public ArrayList<SittingDTO> gradeList();
	//public ArrayList<SittingDTO> tagList(String memSid);
	public ArrayList<SittingDTO> sittingPlaceBasic(String memSid);
	public ArrayList<SittingDTO> sittingPlaceTags(int spSid);
	public ArrayList<SittingDTO> sittingReviews(String memSid);
	public ArrayList<SittingDTO> sittingReviewers();
}
