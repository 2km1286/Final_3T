package com.act.member;

public class MemberDTO {
	private int jmSid, stleSidCount, wtleSidCount;
	// 시팅 카운트 // 산책 카운트
	private String memSid, memRegistDate, jmId, jmPw, jmName, jmSsn, jmNickName, jmTel, jmAddr1, jmAddr2, jmZipCode,
			jmImage, randStr,jmExtraAddr, jmGender;

	
	// 반려견 정보
   private String petName, petImage, petBirth, petGen, petSize, petSpecialNote;  
   private int petSid, iptSid, petWeight;
   
   private String iptName;
   
   
   
	public String getIptName()
{
	return iptName;
}

public void setIptName(String iptName)
{
	this.iptName = iptName;
}

	public String getPetName()
{
	return petName;
}

public void setPetName(String petName)
{
	this.petName = petName;
}

public String getPetImage()
{
	return petImage;
}

public void setPetImage(String petImage)
{
	this.petImage = petImage;
}

public String getPetBirth()
{
	return petBirth;
}

public void setPetBirth(String petBirth)
{
	this.petBirth = petBirth;
}

public String getPetGen()
{
	return petGen;
}

public void setPetGen(String petGen)
{
	this.petGen = petGen;
}

public String getPetSize()
{
	return petSize;
}

public void setPetSize(String petSize)
{
	this.petSize = petSize;
}

public String getPetSpecialNote()
{
	return petSpecialNote;
}

public void setPetSpecialNote(String petSpecialNote)
{
	this.petSpecialNote = petSpecialNote;
}

public int getPetSid()
{
	return petSid;
}

public void setPetSid(int petSid)
{
	this.petSid = petSid;
}

public int getIptSid()
{
	return iptSid;
}

public void setIptSid(int iptSid)
{
	this.iptSid = iptSid;
}

public int getPetWeight()
{
	return petWeight;
}

public void setPetWeight(int petWeight)
{
	this.petWeight = petWeight;
}

	public String getJmImage()
	{
		return jmImage;
	}

	public void setJmImage(String jmImage)
	{
		this.jmImage = jmImage;
	}

	public String getJmExtraAddr()
	{
		return jmExtraAddr;
	}

	public void setJmExtraAddr(String jmExtraAddr)
	{
		this.jmExtraAddr = jmExtraAddr;
	}

	public int getStleSidCount() {
		return stleSidCount;
	}

	public void setStleSidCount(int stleSidCount) {
		this.stleSidCount = stleSidCount;
	}

	public int getWtleSidCount() {
		return wtleSidCount;
	}

	public void setWtleSidCount(int wtleSidCount) {
		this.wtleSidCount = wtleSidCount;
	}

	public String getRandStr() {
		return randStr;
	}

	public void setRandStr(String randStr) {
		this.randStr = randStr;
	}

	public int getJmSid() {
		return jmSid;
	}

	public void setJmSid(int jmSid) {
		this.jmSid = jmSid;
	}

	public String getJmGender() {
		return jmGender;
	}

	public void setJmGender(String jmGender) {
		this.jmGender = jmGender;
	}

	public String getMemSid() {
		return memSid;
	}

	public void setMemSid(String memSid) {
		this.memSid = memSid;
	}

	public String getMemRegistDate() {
		return memRegistDate;
	}

	public void setMemRegistDate(String memRegistDate) {
		this.memRegistDate = memRegistDate;
	}

	public String getJmId() {
		return jmId;
	}

	public void setJmId(String jmId) {
		this.jmId = jmId;
	}

	public String getJmPw() {
		return jmPw;
	}

	public void setJmPw(String jmPw) {
		this.jmPw = jmPw;
	}

	public String getJmName() {
		return jmName;
	}

	public void setJmName(String jmName) {
		this.jmName = jmName;
	}

	public String getJmSsn() {
		return jmSsn;
	}

	public void setJmSsn(String jmSsn) {
		this.jmSsn = jmSsn;
	}

	public String getJmNickName() {
		return jmNickName;
	}

	public void setJmNickName(String jmNickName) {
		this.jmNickName = jmNickName;
	}

	public String getJmTel() {
		return jmTel;
	}

	public void setJmTel(String jmTel) {
		this.jmTel = jmTel;
	}

	public String getJmAddr1() {
		return jmAddr1;
	}

	public void setJmAddr1(String jmAddr1) {
		this.jmAddr1 = jmAddr1;
	}

	public String getJmAddr2() {
		return jmAddr2;
	}

	public void setJmAddr2(String jmAddr2) {
		this.jmAddr2 = jmAddr2;
	}

	public String getJmZipCode() {
		return jmZipCode;
	}

	public void setJmZipCode(String jmZipCode) {
		this.jmZipCode = jmZipCode;
	}

	
}
