package com.act.member;

/* JOIN_MEMBER
JM_SID      NOT NULL NUMBER        
MEM_SID     NOT NULL VARCHAR2(50)  
JM_ID       NOT NULL VARCHAR2(40)  
JM_PW       NOT NULL VARCHAR2(40)  
JM_NAME     NOT NULL VARCHAR2(30)  
JM_SSN      NOT NULL VARCHAR2(30)  
JM_GENDER   NOT NULL NUMBER        
JM_NICKNAME NOT NULL VARCHAR2(100) 
JM_TEL      NOT NULL VARCHAR2(40)  
JM_ADDR1    NOT NULL VARCHAR2(200) 
JM_ADDR2    NOT NULL VARCHAR2(200) 
JM_ZIPCODE  NOT NULL VARCHAR2(20)  
JM_IMAGE
*/

public class JoinMemberDTO
{
	private int jmSid, jmGender;	// 조인멤버시드, 조인멤버성별
	private String memSid, jmId, jmPw, jmName, jmSsn, jmNickname, jmTel, jmAddr1, jmAddr2, jmZipcode, jmImage;
	public int getJmSid()
	{
		return jmSid;
	}
	public void setJmSid(int jmSid)
	{
		this.jmSid = jmSid;
	}
	public int getJmGender()
	{
		return jmGender;
	}
	public void setJmGender(int jmGender)
	{
		this.jmGender = jmGender;
	}
	public String getMemSid()
	{
		return memSid;
	}
	public void setMemSid(String memSid)
	{
		this.memSid = memSid;
	}
	public String getJmId()
	{
		return jmId;
	}
	public void setJmId(String jmId)
	{
		this.jmId = jmId;
	}
	public String getJmPw()
	{
		return jmPw;
	}
	public void setJmPw(String jmPw)
	{
		this.jmPw = jmPw;
	}
	public String getJmName()
	{
		return jmName;
	}
	public void setJmName(String jmName)
	{
		this.jmName = jmName;
	}
	public String getJmSsn()
	{
		return jmSsn;
	}
	public void setJmSsn(String jmSsn)
	{
		this.jmSsn = jmSsn;
	}
	public String getJmNickname()
	{
		return jmNickname;
	}
	public void setJmNickname(String jmNickname)
	{
		this.jmNickname = jmNickname;
	}
	public String getJmTel()
	{
		return jmTel;
	}
	public void setJmTel(String jmTel)
	{
		this.jmTel = jmTel;
	}
	public String getJmAddr1()
	{
		return jmAddr1;
	}
	public void setJmAddr1(String jmAddr1)
	{
		this.jmAddr1 = jmAddr1;
	}
	public String getJmAddr2()
	{
		return jmAddr2;
	}
	public void setJmAddr2(String jmAddr2)
	{
		this.jmAddr2 = jmAddr2;
	}
	public String getJmZipcode()
	{
		return jmZipcode;
	}
	public void setJmZipcode(String jmZipcode)
	{
		this.jmZipcode = jmZipcode;
	}
	public String getJmImage()
	{
		return jmImage;
	}
	public void setJmImage(String jmImage)
	{
		this.jmImage = jmImage;
	}      
	
	


}
