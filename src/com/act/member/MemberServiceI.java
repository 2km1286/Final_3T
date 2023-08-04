package com.act.member;

import javax.servlet.http.HttpSession;

public interface MemberServiceI
{
	
	public String searchMemsid(MemberDTO dto);
	
	public int searchId(String jmId);
	
	public int searchNick(String jmNickName);
	
	public String idFind(MemberDTO dto);
	
	public String pwFind(MemberDTO dto);
	
	public int updatePw(MemberDTO dto);
	
	public int join(HttpSession session, MemberDTO dto);
}