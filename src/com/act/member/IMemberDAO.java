package com.act.member;

public interface IMemberDAO
{
	public int join(MemberDTO dto);
	public int add(String randStr);
	public String getMemSid();
}
