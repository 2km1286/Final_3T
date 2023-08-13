package com.act.member;


public interface IMemberService
{
	
	
	
	public String searchMemsid(MemberDTO dto);
	
	// 아이디 비밀번호로 펫시터 타임라인 종료 횟수 찾기
	public String searchSittingcount(MemberDTO dto);
	
	// 아이디 비밀번호로 대리산책 타임라인 종료 횟수 찾기
	public String searchWalkcount(MemberDTO dto);
	
	public int searchId(String jmId);
	
	public int searchNick(String jmNickName);
	
	public String findId(MemberDTO dto);
	
	public String findPw(MemberDTO dto);
	
	public int updatePw(MemberDTO dto);
	
	public int join(MemberDTO dto);
	
	public String searchMemNickName(MemberDTO dto);
	
	public int profilCompanionNotice(String memSid);
}