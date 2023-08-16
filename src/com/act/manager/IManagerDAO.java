package com.act.manager;

import java.util.ArrayList;

public interface IManagerDAO
{
	// 아이디 비밀번호로 관리자 정보조회
	public String searchMansid(ManagerDTO dto);

	public int sittingSearchEmerg();
	public int walkSearchEmerg();
	public String searchManagerName(String str);
	public ArrayList<ManagerDTO> sittingReportList();
	public int updateSittingPublic(ManagerDTO dto);
	
	public ArrayList<ManagerDTO> walkReportList();
	public int updateWalkPublic(ManagerDTO dto);
	
	// 반려
	public int deleteSittingReport(ManagerDTO dto);
	public int deleteWalkReport(ManagerDTO dto);
	
	public ArrayList<ManagerDTO> profileReportList();
	public int deleteProfileReport(ManagerDTO dto);
	
	// 완료된 신고
	public ArrayList<ManagerDTO> sittingCompleteList();
	public ArrayList<ManagerDTO> walkCompleteList();
	public ArrayList<ManagerDTO> profileCompleteList();
	
	
	
	// 사고처리 내역
	public ArrayList<ManagerDTO> sittingAccList();
	public ArrayList<ManagerDTO> walkAccList();
	
	// 비상내역
	public ArrayList<ManagerDTO> sittingEmergList();
	public ArrayList<ManagerDTO> walkEmergList();
	
	// 비상완료내역
	public ArrayList<ManagerDTO> sittingEmergComplete();
	public ArrayList<ManagerDTO> walkEmergComplete();
	
	// 비상내역 처리
	public int deleteWalkEmerg(ManagerDTO dto);
	public int deleteSittingEmerg(ManagerDTO dto);
	
	
	// 멤버 전체 출력
	public ArrayList<ManagerDTO> memberAllList();
	
	
	// 멤버 닉네임 검색 출력
	public ManagerDTO memberNickNameList(ManagerDTO dto);
	
	// 멤버 정지
	public int memberBanned(ManagerDTO dto);
	public int memberBannedProfile(ManagerDTO dto);
	
	
	// 통계를 위한 멤버 분포 수
	public ManagerDTO memberCount();
	
	// ssrSid 로 memSid 찾기 ==> 신고내역에서 바로 예약으로
	public String openWithSrrId(ManagerDTO dto);
	
}
