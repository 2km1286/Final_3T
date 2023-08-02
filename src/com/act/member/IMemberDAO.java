package com.act.member;

public interface IMemberDAO
{
	public int join(MemberDTO m);
	public int add(String memSid);
	public String getRandom();
}
