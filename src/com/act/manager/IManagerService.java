package com.act.manager;

import java.util.ArrayList;

public interface IManagerService
{
	public String searchMansid(ManagerDTO dto);
	public int sittingSearchEmerg();
	public int walkSearchEmerg();
	public String searchManagerName(String str);
	public ArrayList<ManagerDTO> sittingReportList();
	public int updateSittingPublic(ManagerDTO dto);
	
	public ArrayList<ManagerDTO> walkReportList();
	public int updateWalkPublic(ManagerDTO dto);
	
	
	public int deleteSittingReport(ManagerDTO dto);
	public int deleteWalkReport(ManagerDTO dto);


}