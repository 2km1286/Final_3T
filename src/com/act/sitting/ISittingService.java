package com.act.sitting;

import java.util.ArrayList;
import java.util.List;

public interface ISittingService
{
	public ArrayList<SittingDTO> list();
	public ArrayList<SittingDTO> IndexTagList();
	public ArrayList<SittingDTO> sittingPlaceBasic(String memSid);
	public ArrayList<SittingDTO> sittingPlaceTags(int spSid);
	public ArrayList<SittingDTO> sittingReviews(String memSid);
	public ArrayList<SittingDTO> sittingReviewers();
	public ArrayList<SittingDTO> tagList();
	public ArrayList<SittingDTO> sittingFilterList(SittingDTO dto);
	public ArrayList<SittingDTO> sittingFilterTagList(SittingDTO dto);
	public ArrayList<SittingDTO> memSittingCancelToday(String memSid);
	public ArrayList<SittingDTO> sittingReviewToday(String memSid);
	public ArrayList<SittingDTO> sittingCompanionToday(String memSid);
	public ArrayList<SittingDTO> memSittingBookToday(String memSid);
	public ArrayList<SittingDTO> sittingBookToday(String memSid);
}
