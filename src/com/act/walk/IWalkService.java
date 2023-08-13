package com.act.walk;

import java.util.ArrayList;

public interface IWalkService
{
	public ArrayList<WalkDTO> list();
	
	public ArrayList<WalkDTO> IndexTagList();
	
	public ArrayList<WalkDTO> gradeList();
	
	public WalkDTO getWalkerLicenseNumber(String memSid);
	
	public boolean postInsert(WalkDTO dto);
}
