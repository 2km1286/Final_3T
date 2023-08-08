package com.act.walk;

import java.util.ArrayList;

import com.act.walk.WalkDTO;

public interface IWalkDAO
{
	public ArrayList<WalkDTO> list();
	public ArrayList<WalkDTO> IndexTagList();
	public ArrayList<WalkDTO> gradeList();

}
