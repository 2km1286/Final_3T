package com.act.member;

public interface IMemberDAO
{
	public int add(String memSid);
	
	public int join(MemberDTO dto);
	
	public int searchId(String jmId);
	
	public int searchNick(String jmNickName);
	
}
