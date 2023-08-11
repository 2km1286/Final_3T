package com.act.sitting;

/*
JM_NICKNAME, SP_TITLE, SP_ADDR1, SP_ADDR2, MEM_SID, SPH_SID, SHP_START, SHP_END, 
SR_START, SR_END, SRW_SID, SRW_SID, STLE_SID, SP_MAX_PET, SP_SID
*/

public class SittingDTO
{
	// SITTING_PLACE_LIST_VIEW
	private String jmNickName, sptitle, spAddr1, spAddr2, extraAddr, memSid, sphStart, sphEnd, srStart, srEnd;
	private int sphSid, srwSid, stleSid, spMaxPet, spSid;
	private String grade;
	private int price;
	
	public int getIsptSid1()
	{
		return isptSid1;
	}
	public void setIsptSid1(int isptSid1)
	{
		this.isptSid1 = isptSid1;
	}
	public int getIsptSid2()
	{
		return isptSid2;
	}
	public void setIsptSid2(int isptSid2)
	{
		this.isptSid2 = isptSid2;
	}
	public int getIsptSid3()
	{
		return isptSid3;
	}
	public void setIsptSid3(int isptSid3)
	{
		this.isptSid3 = isptSid3;
	}
	public int getIsptSid4()
	{
		return isptSid4;
	}
	public void setIsptSid4(int isptSid4)
	{
		this.isptSid4 = isptSid4;
	}
	public int getIsptSid5()
	{
		return isptSid5;
	}
	public void setIsptSid5(int isptSid5)
	{
		this.isptSid5 = isptSid5;
	}
	public int getIsptSid6()
	{
		return isptSid6;
	}
	public void setIsptSid6(int isptSid6)
	{
		this.isptSid6 = isptSid6;
	}
	public int getIsptSid7()
	{
		return isptSid7;
	}
	public void setIsptSid7(int isptSid7)
	{
		this.isptSid7 = isptSid7;
	}
	public int getIsptSid8()
	{
		return isptSid8;
	}
	public void setIsptSid8(int isptSid8)
	{
		this.isptSid8 = isptSid8;
	}
	public int getIsptSid9()
	{
		return isptSid9;
	}
	public void setIsptSid9(int isptSid9)
	{
		this.isptSid9 = isptSid9;
	}
	public int getIsptSid10()
	{
		return isptSid10;
	}
	public void setIsptSid10(int isptSid10)
	{
		this.isptSid10 = isptSid10;
	}
	public int getIsptSid11()
	{
		return isptSid11;
	}
	public void setIsptSid11(int isptSid11)
	{
		this.isptSid11 = isptSid11;
	}
	// INDEX_SITTING_PLACE_TAG
	private int isptSid;
	private int isptSid1, isptSid2,isptSid3, isptSid4,isptSid5,isptSid6,isptSid7,isptSid8,isptSid9,isptSid10,isptSid11;
	private String isptName;
	
	// SITTING_BOOK_VIEW	// sbStart 가 나눠져있는건 달력js에서 사용하기 위함, pmemSid는 예약을 요청한 멤버시드	
	private String sbStartYear, sbStartMonth, sbStartDay, sbEnd, pmemSid;	
	private int sbSid, sbPrice;
	
	// 펫시팅 리스트 검색조건 - 날짜
	private String datePicker;
	
	
	
	
	
	
	public String getDatePicker()
	{
		return datePicker;
	}
	public void setDatePicker(String datePicker)
	{
		this.datePicker = datePicker;
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
