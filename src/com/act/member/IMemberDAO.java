package com.act.member;

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
}
