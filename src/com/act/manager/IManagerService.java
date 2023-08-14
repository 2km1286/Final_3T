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
	
	
	public ArrayList<ManagerDTO> profileReportList();
	public int deleteProfileReport(ManagerDTO dto);
	
	// 신고완료 내역
	public ArrayList<ManagerDTO> sittingCompleteList();
	public ArrayList<ManagerDTO> walkCompleteList();
	public ArrayList<ManagerDTO> profileCompleteList();
	
	
	
	// 사고처리 내역
	public ArrayList<ManagerDTO> sittingAccList();
	public ArrayList<ManagerDTO> walkAccList();
	
	
	
	// 통계를 위한 멤버 분포 수
	public ManagerDTO memberCount();


	
	


}