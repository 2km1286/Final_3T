package com.act.member;

import javax.servlet.http.HttpSession;

public interface IMemberService
{
	
	
	
	public String searchMemsid(MemberDTO dto);
	
	public int searchId(String jmId);
	
	public int searchNick(String jmNickName);
	
	public String findId(MemberDTO dto);
	
	public String findPw(MemberDTO dto);
	
	public int updatePw(MemberDTO dto);
	
	public int join(HttpSession session, MemberDTO dto);
	
	public String searchMemNickName(MemberDTO dto);
	
	public int sittingStsCount(MemberDTO dto);
	
	public int sittingSlCount(MemberDTO dto);
	
	
	
	
}