package com.act.member;

public interface IManagerDAO
{
	// 아이디 비밀번호로 관리자 정보조회
	public String searchMansid(ManagerDTO dto);
}
