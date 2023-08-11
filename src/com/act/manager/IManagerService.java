package com.act.manager;

import java.util.ArrayList;

public interface IManagerService
{
	public String searchMansid(ManagerDTO dto);
	public int sittingSearchEmerg();
	public int walkSearchEmerg();
	public String searchManagerName(String str);
	public ArrayList<ManagerDTO> sittingReportList(ManagerDTO dto);
}