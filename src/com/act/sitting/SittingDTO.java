package com.act.sitting;

/*
JM_NICKNAME, SP_TITLE, SP_ADDR1, SP_ADDR2, MEM_SID, SPH_SID, SHP_START, SHP_END, 
SR_START, SR_END, SRW_SID, SRW_SID, STLE_SID, SP_MAX_PET, SP_SID
*/

public class SittingDTO
{
	// SITTING_PLACE_LIST_VIEW
	private String jmNickName, sptitle, spAddr1, spAddr2, memSid, sphStart, sphEnd, srStart, srEnd;
	private int sphSid, srwSid, stleSid, spMaxPet, spSid;
	
	// INDEX_SITTING_PLACE_TAG
	private int isptSid;
	private String isptName;
	
	// SITTING_GRADE_VIEW
	private String grade;
	private int price;
	
	// SITTING_BOOK_VIEW	// sbStart 가 나눠져있는건 달력js에서 사용하기 위함, pmemSid는 예약을 요청한 멤버시드	
	private String sbStartYear, sbStartMonth, sbStartDay, sbEnd, pmemSid;	
	private int sbSid, sbPrice;
	
	private String extraAddr, spContent;
	private int ipSid;
	

	public String getSpContent()
	{
		return spContent;
	}
	public void setSpContent(String spContent)
	{
		this.spContent = spContent;
	}
	public int getIpSid()
	{
		return ipSid;
	}
	public void setIpSid(int ipSid)
	{
		this.ipSid = ipSid;
	}
	public String getExtraAddr()
	{
		return extraAddr;
	}
	public void setExtraAddr(String extraAddr)
	{
		this.extraAddr = extraAddr;
	}
	
	public String getSbStartYear()
	{
		return sbStartYear;
	}
	public void setSbStartYear(String sbStartYear)
	{
		this.sbStartYear = sbStartYear;
	}
	public String getSbStartMonth()
	{
		return sbStartMonth;
	}
	public void setSbStartMonth(String sbStartMonth)
	{
		this.sbStartMonth = sbStartMonth;
	}
	public String getSbStartDay()
	{
		return sbStartDay;
	}
	public void setSbStartDay(String sbStartDay)
	{
		this.sbStartDay = sbStartDay;
	}
	public String getPmemSid()
	{
		return pmemSid;
	}
	public void setPmemSid(String pmemSid)
	{
		this.pmemSid = pmemSid;
	}
	public int getSbSid()
	{
		return sbSid;
	}
	public void setSbSid(int sbSid)
	{
		this.sbSid = sbSid;
	}
	public int getSbPrice()
	{
		return sbPrice;
	}
	public void setSbPrice(int sbPrice)
	{
		this.sbPrice = sbPrice;
	}
	public String getSbEnd()
	{
		return sbEnd;
	}
	public void setSbEnd(String sbEnd)
	{
		this.sbEnd = sbEnd;
	}
	public String getGrade()
	{
		return grade;
	}
	public void setGrade(String grade)
	{
		this.grade = grade;
	}
	public int getPrice()
	{
		return price;
	}
	public void setPrice(int price)
	{
		this.price = price;
	}
	public String getJmNickName()
	{
		return jmNickName;
	}
	public void setJmNickName(String jmNickName)
	{
		this.jmNickName = jmNickName;
	}
	public String getSptitle()
	{
		return sptitle;
	}
	public void setSptitle(String sptitle)
	{
		this.sptitle = sptitle;
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
	public int getIsptSid()
	{
		return isptSid;
	}
	public void setIsptSid(int isptSid)
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
	
	
	
	
	
	
	
}
