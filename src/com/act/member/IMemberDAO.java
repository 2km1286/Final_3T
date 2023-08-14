package com.act.member;

import java.util.ArrayList;

public interface IMemberDAO
{	
	// 설명써주시고
	public int join(MemberDTO dto);
	
	// 설명써주시고
	public int add(String randStr);
	
	// 설명써주시고
	public String getMemSid();
	
	// 아이디와 비밀번호로 memSid 찾기
	public String searchMemsid(MemberDTO dto);
	
	
	// 아이디 비밀번호로 펫시터 타임라인 종료 횟수 찾기
	public String searchSittingcount(MemberDTO dto);
	
	// 아이디 비밀번호로 대리산책 타임라인 종료 횟수 찾기
	public String searchWalkcount(MemberDTO dto);
	
	
	// 아이디와 비밀번호로 jm_nickname 찾기
	public String searchMemNickName(MemberDTO dto);
	
	// 이름과 주민번호로 아이디 찾기
	public String findId(MemberDTO dto);
	
	// 아이디, 이름, 주민번호로 memSid 찾기
	public String findPw(MemberDTO dto);
	
	// 비밀번호 재설정하기
	public int updatePw(MemberDTO dto);
	
	// 아이디 중복 확인
	public int searchId(String jmId);
	
	// 닉네임 중복 확인
	public int searchNick(String jmNickName);
	
	// 멤버 리스트 전체 출력하기
	public ArrayList<MemberDTO> memberList();
	
	// 오늘 프로필 반려당한 건수
	public int profilCompanionNotice(String memSid);
	
	// 오늘 프로필 수정요청 당한 건수

}
