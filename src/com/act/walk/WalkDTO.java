package com.act.walk;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class WalkDTO
{
	private String wptitle, wpcontent, wpaddr1, memSid, wpextraaddr, wpstart, wpend;
	
	private Date wpcreated;
	
	private Integer wpmaxpet;
	private int wpsid,ipsid, wlsid;
	
	// 범례 태그
	private int iwptsid;     
	private String iwptname;
	
	// 등급
	private int iwisid, iwiprice, iwicount;
	private String iwigrade;
	
	// 이미지 파일
	private MultipartFile file;
	private String wppname;
	private String wpppath;
	
	// 어필태그
	private List<String> selectedTags;		// 사용자가 선택한 어필태그
	private String selectedTagsString; // hidden field에서 사용할 문자열
	public String getWptitle()
	{
		return wptitle;
	}
	public void setWptitle(String wptitle)
	{
		this.wptitle = wptitle;
	}
	public String getWpcontent()
	{
		return wpcontent;
	}
	public void setWpcontent(String wpcontent)
	{
		this.wpcontent = wpcontent;
	}
	public String getWpaddr1()
	{
		return wpaddr1;
	}
	public void setWpaddr1(String wpaddr1)
	{
		this.wpaddr1 = wpaddr1;
	}
	public String getMemSid()
	{
		return memSid;
	}
	public void setMemSid(String memSid)
	{
		this.memSid = memSid;
	}
	public String getWpextraaddr()
	{
		return wpextraaddr;
	}
	public void setWpextraaddr(String wpextraaddr)
	{
		this.wpextraaddr = wpextraaddr;
	}
	public String getWpstart()
	{
		return wpstart;
	}
	public void setWpstart(String wpstart)
	{
		this.wpstart = wpstart;
	}
	public String getWpend()
	{
		return wpend;
	}
	public void setWpend(String wpend)
	{
		this.wpend = wpend;
	}
	public Date getWpcreated()
	{
		return wpcreated;
	}
	public void setWpcreated(Date wpcreated)
	{
		this.wpcreated = wpcreated;
	}
	public int getWpsid()
	{
		return wpsid;
	}
	public void setWpsid(int wpsid)
	{
		this.wpsid = wpsid;
	}
	public Integer getWpmaxpet()
	{
		return wpmaxpet;
	}
	public void setWpmaxpet(Integer wpmaxpet)
	{
		this.wpmaxpet = wpmaxpet;
	}
	public int getIpsid()
	{
		return ipsid;
	}
	public void setIpsid(int ipsid)
	{
		this.ipsid = ipsid;
	}
	public int getWlsid()
	{
		return wlsid;
	}
	public void setWlsid(int wlsid)
	{
		this.wlsid = wlsid;
	}
	public int getIwptsid()
	{
		return iwptsid;
	}
	public void setIwptsid(int iwptsid)
	{
		this.iwptsid = iwptsid;
	}
	public String getIwptname()
	{
		return iwptname;
	}
	public void setIwptname(String iwptname)
	{
		this.iwptname = iwptname;
	}
	public int getIwisid()
	{
		return iwisid;
	}
	public void setIwisid(int iwisid)
	{
		this.iwisid = iwisid;
	}
	public int getIwiprice()
	{
		return iwiprice;
	}
	public void setIwiprice(int iwiprice)
	{
		this.iwiprice = iwiprice;
	}
	public int getIwicount()
	{
		return iwicount;
	}
	public void setIwicount(int iwicount)
	{
		this.iwicount = iwicount;
	}
	public String getIwigrade()
	{
		return iwigrade;
	}
	public void setIwigrade(String iwigrade)
	{
		this.iwigrade = iwigrade;
	}
	public MultipartFile getFile()
	{
		return file;
	}
	public void setFile(MultipartFile file)
	{
		this.file = file;
	}
	public String getWppname()
	{
		return wppname;
	}
	public void setWppname(String wppname)
	{
		this.wppname = wppname;
	}
	public String getWpppath()
	{
		return wpppath;
	}
	public void setWpppath(String wpppath)
	{
		this.wpppath = wpppath;
	}
	public List<String> getSelectedTags()
	{
		return selectedTags;
	}
	public void setSelectedTags(List<String> selectedTags)
	{
		this.selectedTags = selectedTags;
	}
	public String getSelectedTagsString()
	{
		return selectedTagsString;
	}
	public void setSelectedTagsString(String selectedTagsString)
	{
		this.selectedTagsString = selectedTagsString;
	}

	
	
}
