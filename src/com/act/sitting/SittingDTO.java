package com.act.sitting;

/*
JM_NICKNAME, SP_TITLE, SP_ADDR1, SP_ADDR2, MEM_SID, SPH_SID, SHP_START, SHP_END, 
SR_START, SR_END, SRW_SID, SRW_SID, STLE_SID, SP_MAX_PET, SP_SID
*/

public class SittingDTO
{
	private String jmNickname, spTitle, spAddr1, spAddr2, memSid, sphStart, sphEnd, srStart, srEnd;
	private int sphSid, srwSid, stleSid, spMaxPet, spSid;
	private String isptSid, isptName;
	
	public String getIsptSid()
	{
		return isptSid;
	}
	public void setIsptSid(String isptSid)
	{
		this.isptSid = isptSid;
	}
	public String getIsptName()
	{
		return isptName;
	}
	public void setIsptName(String isptName)
	{
		this.isptName = isptName;
	}
	public String getJmNickname()
	{
		return jmNickname;
	}
	public void setJmNickname(String jmNickname)
	{
		this.jmNickname = jmNickname;
	}
	public String getSphStart()
	{
		return sphStart;
	}
	public void setSphStart(String sphStart)
	{
		this.sphStart = sphStart;
	}
	public String getSphEnd()
	{
		return sphEnd;
	}
	public void setSphEnd(String sphEnd)
	{
		this.sphEnd = sphEnd;
	}
	public String getSpTitle()
	{
		return spTitle;
	}
	public void setSpTitle(String spTitle)
	{
		this.spTitle = spTitle;
	}
	public String getSpAddr1()
	{
		return spAddr1;
	}
	public void setSpAddr1(String spAddr1)
	{
		this.spAddr1 = spAddr1;
	}
	public String getSpAddr2()
	{
		return spAddr2;
	}
	public void setSpAddr2(String spAddr2)
	{
		this.spAddr2 = spAddr2;
	}
	public String getMemSid()
	{
		return memSid;
	}
	public void setMemSid(String memSid)
	{
		this.memSid = memSid;
	}
	public String getSrStart()
	{
		return srStart;
	}
	public void setSrStart(String srStart)
	{
		this.srStart = srStart;
	}
	public String getSrEnd()
	{
		return srEnd;
	}
	public void setSrEnd(String srEnd)
	{
		this.srEnd = srEnd;
	}
	public int getSphSid()
	{
		return sphSid;
	}
	public void setSphSid(int sphSid)
	{
		this.sphSid = sphSid;
	}
	public int getSrwSid()
	{
		return srwSid;
	}
	public void setSrwSid(int srwSid)
	{
		this.srwSid = srwSid;
	}
	public int getStleSid()
	{
		return stleSid;
	}
	public void setStleSid(int stleSid)
	{
		this.stleSid = stleSid;
	}
	public int getSpMaxPet()
	{
		return spMaxPet;
	}
	public void setSpMaxPet(int spMaxPet)
	{
		this.spMaxPet = spMaxPet;
	}
	public int getSpSid()
	{
		return spSid;
	}
	public void setSpSid(int spSid)
	{
		this.spSid = spSid;
	}
	
	
	
	
}
