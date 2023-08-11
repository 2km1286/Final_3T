package com.act.manager;

import java.util.ArrayList;

public interface IManagerDAO
{
	// 아이디 비밀번호로 관리자 정보조회
	public String searchMansid(ManagerDTO dto);

	public int sittingSearchEmerg();
	public int walkSearchEmerg();
	public String searchManagerName(String str);
	public ArrayList<ManagerDTO> sittingReportList(ManagerDTO dto);
	

}
