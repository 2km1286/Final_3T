package com.act.member;

public interface IJoinMemberDAO
{
	// 아이디와 비밀번호로 memSid 찾기
	public String searchMemsid(JoinMemberDTO dto);
	
	// memSid 로 닉네임 조회하기 ( + 모든 걸 조회하는 뷰를 만들기, memSid에 따라 모든정보 가져오는 메소드. SQL문으로처리 )
	
	// 이름과 주민번호로 아이디 찾기
	public String findId(JoinMemberDTO dto);
	
	// 아이디, 이름, 주민번호로 memSid 찾기
	public String findPw(JoinMemberDTO dto);
	
	// 비밀번호 재설정하기
	public int updatePw(JoinMemberDTO dto);
	
}
