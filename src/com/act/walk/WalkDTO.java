package com.act.walk;

public class WalkDTO
{
	private String memSid;
	
	private String wptitle, wpcontent, wpstart, wpend, wpaddr1, wpcreated;
	private int wpsid, wpmaxpet, ipsid, wlsid;		// 여기 다 소문자인거 확인~!!!
	
	
	// 범례 태그
	private int iwptsid;     
	private String iwptname;						// 여기 다 소문자인거 확인~!!!
	
	// 등급
	private int iwisid, iwiprice, iwicount;			// 여기 다 소문자인거 확인~!!!
	private String iwigrade;
	
	// 예약시작일, 종료일, 접수완료번호, 예약을 요청한 견주의 memSid는 pMemSid
	private String wbStart, wbEnd, pMemSid;
	private int wbSid;
	
	// 후기
	private int wrSid, wrRating;
	private String wrTitle, wrContent, wrDate;
	
	public int getWrRating()
	{
		return wrRating;
	}
	public void setWrRating(int wrRating)
	{
		this.wrRating = wrRating;
	}
	public String getWrDate()
	{
		return wrDate;
	}
	public void setWrDate(String wrDate)
	{
		this.wrDate = wrDate;
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
	public String getMemSid()
	{
		return memSid;
	}
	public void setMemSid(String memSid)
	{
		this.memSid = memSid;
	}
	public int getWrSid()
	{
		return wrSid;
	}
	public void setWrSid(int wrSid)
	{
		this.wrSid = wrSid;
	}
	
	public String getWrTitle()
	{
		return wrTitle;
	}
	public void setWrTitle(String wrTitle)
	{
		this.wrTitle = wrTitle;
	}
	public String getWrContent()
	{
		return wrContent;
	}
	public void setWrContent(String wrContent)
	{
		this.wrContent = wrContent;
	}
	public String getWbStart()
	{
		return wbStart;
	}
	public void setWbStart(String wbStart)
	{
		this.wbStart = wbStart;
	}
	public String getWbEnd()
	{
		return wbEnd;
	}
	public void setWbEnd(String wbEnd)
	{
		this.wbEnd = wbEnd;
	}
	public String getpMemSid()
	{
		return pMemSid;
	}
	public void setpMemSid(String pMemSid)
	{
		this.pMemSid = pMemSid;
	}
	public int getWbSid()
	{
		return wbSid;
	}
	public void setWbSid(int wbSid)
	{
		this.wbSid = wbSid;
	}
	public int getIwptsid() {
		return iwptsid;
	}
	public void setIwptsid(int iwptsid) {
		this.iwptsid = iwptsid;
	}
	public String getIwptname() {
		return iwptname;
	}
	public void setIwptname(String iwptname) {
		this.iwptname = iwptname;
	}
	public String getWptitle() {
		return wptitle;
	}
	public void setWptitle(String wptitle) {
		this.wptitle = wptitle;
	}
	public String getWpcontent() {
		return wpcontent;
	}
	public void setWpcontent(String wpcontent) {
		this.wpcontent = wpcontent;
	}
	public String getWpstart() {
		return wpstart;
	}
	public void setWpstart(String wpstart) {
		this.wpstart = wpstart;
	}
	public String getWpend() {
		return wpend;
	}
	public void setWpend(String wpend) {
		this.wpend = wpend;
	}
	public String getWpaddr1() {
		return wpaddr1;
	}
	public void setWpaddr1(String wpaddr1) {
		this.wpaddr1 = wpaddr1;
	}
	public String getWpcreated() {
		return wpcreated;
	}
	public void setWpcreated(String wpcreated) {
		this.wpcreated = wpcreated;
	}
	public int getWpsid() {
		return wpsid;
	}
	public void setWpsid(int wpsid) {
		this.wpsid = wpsid;
	}
	public int getWpmaxpet() {
		return wpmaxpet;
	}
	public void setWpmaxpet(int wpmaxpet) {
		this.wpmaxpet = wpmaxpet;
	}
	public int getIpsid() {
		return ipsid;
	}
	public void setIpsid(int ipsid) {
		this.ipsid = ipsid;
	}
	public int getWlsid() {
		return wlsid;
	}
	public void setWlsid(int wlsid) {
		this.wlsid = wlsid;
	}
	
	


}
