package com.act.manager;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagerController
{
	@Autowired
	private IManagerService managerService;

	// 관리자 폼 페이지로 가는 액션
	@RequestMapping("/managermain.action")
	public String adminmain(HttpServletRequest request)
	{
		String result = "";
		request.setAttribute("miName", request.getParameter("miName"));
		request.setAttribute("flag", request.getParameter("flag"));
		result = "/WEB-INF/views/manager/ManagerPage.jsp";
		return result;
	}

	// 매니저인지 아닌지 조회, 로그인 성공/실패
	@RequestMapping("/managerlogin.action")
	public String manLoginCount(ManagerDTO dto, HttpSession session)
	{

		String url = "";

		String result = managerService.searchMansid(dto);
		if (result.equals("0"))
		{
			url = "redirect:loginpage.action?error=1";

		} else
		{
			
			session.setAttribute("miSid", result);
			String miName = managerService.searchManagerName(result);
			//System.out.println(miName);
			
			url = "managermain.action?miName="+miName;
		}

		return url;
	}

	// 관리자 처리완료된 신고. AJAX로 처리.
	@RequestMapping("/managercompletereport.action")
	public String managerCompleteReport(HttpServletRequest request)
	{
		String result = "";
		// AJAX이자 컴포넌트
		request.setAttribute("flag", request.getParameter("flag"));
		result = "/WEB-INF/ajax/manager/ManagerCompleteReportForm.jsp";
		return result;
	}

	// 관리자 신고현안 및 비상관리 -AJAX로 처리.
	@RequestMapping("/managerreportlist.action")
	public String managerReportList(HttpServletRequest request)
	{
		String result = "";
		// AJAX이자 컴포넌트
		int sittingCount =0;
		int walkCount = 0;
		sittingCount = managerService.sittingSearchEmerg();
		walkCount = managerService.walkSearchEmerg();
		request.setAttribute("count", sittingCount + walkCount);
		request.setAttribute("flag", request.getParameter("flag"));
		result = "/WEB-INF/ajax/manager/ManagerReportListForm.jsp";
		
		return result;
	}
	
	// 펫시팅 신고내역조회 -AJAX 처리
	@RequestMapping("/sittingreportlist.action")
	public String sittingReportList(HttpServletRequest request,Model model)
	{
		String result = "";
		int sittingCount =0;
		int walkCount = 0;
		sittingCount = managerService.sittingSearchEmerg();
		walkCount = managerService.walkSearchEmerg();
		request.setAttribute("count", sittingCount + walkCount);
		ArrayList<ManagerDTO> sittingReportList = managerService.sittingReportList();
		model.addAttribute("sittingReportList", sittingReportList);
		result = "/WEB-INF/ajax/manager/SittingReportList.jsp";
		
		return result;
	}
	
	// 펫시팅 신고처리완료조회 -AJAX 처리
	@RequestMapping("/sittingcompletelist.action")
	public String sittingcompletelist(HttpServletRequest request,Model model)
	{
		String result = "";
		
		ArrayList<ManagerDTO> sittingCompleteList = managerService.sittingCompleteList();
		model.addAttribute("sittingCompleteList", sittingCompleteList);
		result = "/WEB-INF/ajax/manager/SittingCompleteList.jsp";
		
		return result;
	}
	// 대리산책 신고처리완료조회 -AJAX 처리
	@RequestMapping("/walkcompletelist.action")
	public String walkcompletelist(HttpServletRequest request,Model model)
	{
		String result = "";
		
		ArrayList<ManagerDTO> walkCompleteList = managerService.walkCompleteList();
		model.addAttribute("walkCompleteList", walkCompleteList);
		result = "/WEB-INF/ajax/manager/WalkCompleteList.jsp";
		
		return result;
	}
	// 프로필 신고처리완료조회 -AJAX 처리
	@RequestMapping("/profilecompletelist.action")
	public String profilecompletelist(HttpServletRequest request,Model model)
	{
		String result = "";
		
		ArrayList<ManagerDTO> profileCompleteList = managerService.profileCompleteList();
		model.addAttribute("profileCompleteList", profileCompleteList);
		result = "/WEB-INF/ajax/manager/ProfileCompleteList.jsp";
		return result;
	}
	
	// 대리산책 신고내역조회 -AJAX 처리
	@RequestMapping("/walkreportlist.action")
	public String walkReportList(HttpServletRequest request,Model model)
	{
		String result = "";
		int sittingCount =0;
		int walkCount = 0;
		sittingCount = managerService.sittingSearchEmerg();
		walkCount = managerService.walkSearchEmerg();
		request.setAttribute("count", sittingCount + walkCount);
		ArrayList<ManagerDTO> walkReportList = managerService.walkReportList();
		model.addAttribute("WalkReportList", walkReportList);
		result = "/WEB-INF/ajax/manager/WalkReportList.jsp";
		
		return result;
	}
	
	// 프로필 신고내역조회 -AJAX 처리
	@RequestMapping("/profilereportlist.action")
	public String profilereportlist(HttpServletRequest request,Model model)
	{
		String result = "";
		int sittingCount =0;
		int walkCount = 0;
		sittingCount = managerService.sittingSearchEmerg();
		walkCount = managerService.walkSearchEmerg();
		request.setAttribute("count", sittingCount + walkCount);
		ArrayList<ManagerDTO> profileReportList = managerService.profileReportList();
		model.addAttribute("ProfileReportList", profileReportList);
		result = "/WEB-INF/ajax/manager/ProfileReportList.jsp";
		
		return result;
	}
	

	// 펫시팅 신고내역 블라인드 처리
	@RequestMapping("/sittingprivate.action")
	public String sittingprivate(ManagerDTO dto)
	{
		String result = "";
		// AJAX이자 컴포넌트
		int i = managerService.updateSittingPublic(dto);
		result= "mainpage.action";		// 모르겠음 사실 이건
		return result;
	}
	// 대리산책 신고내역 블라인드 처리
	@RequestMapping("/walkprivate.action")
	public String walkprivate(ManagerDTO dto)
	{
		String result = "";
		// AJAX이자 컴포넌트
		int i = managerService.updateWalkPublic(dto);
		result= "mainpage.action";		// 모르겠음 사실 이건
		return result;
	}
	// 펫시팅 신고내역 반려
	@RequestMapping("/removesittingreport.action")
	public String removesittingreport(ManagerDTO dto)
	{
		String result = "";
		// AJAX이자 컴포넌트
		int i = managerService.deleteSittingReport(dto);
		result= "mainpage.action";		// 모르겠음 사실 이건
		return result;
	}
	// 대리산책 신고내역 반려
	@RequestMapping("/removewalkreport.action")
	public String removewalkreport(ManagerDTO dto)
	{
		String result = "";
		// AJAX이자 컴포넌트
		int i = managerService.deleteWalkReport(dto);
		result= "mainpage.action";		// 모르겠음 사실 이건
		return result;
	}
	
	// 프로필 신고내역 반려
	@RequestMapping("/removeprofilereport.action")
	public String removeprofilereport(ManagerDTO dto)
	{
		String result = "";
		// AJAX이자 컴포넌트
		int i = managerService.deleteProfileReport(dto);
		result= "mainpage.action";		// 모르겠음 사실 이건
		return result;
	}
	
	

	// 관리자 회원관리. AJAX로 처리.
	@RequestMapping("/managermemberlist.action")
	public String managerMemberList(HttpServletRequest request)
	{
		String result = "";
		// AJAX이자 컴포넌트
		result = "/WEB-INF/ajax/manager/ManagerMemberListForm.jsp";
		return result;
	}

	// 관리자 통계. AJAX로 처리.
	@RequestMapping("/managerchartform.action")
	public String managerchartform(HttpServletRequest request)
	{
		String result = "";
		// AJAX이자 컴포넌트

		result = "/WEB-INF/ajax/manager/ManagerChartForm.jsp";
		return result;
	}
	
	// 사고처리 내역. AJAX로 처리.
	@RequestMapping("/managercompleteacc.action")
	public String managerCompleteAcc(HttpServletRequest request)
	{
		String result = "";
		// AJAX이자 컴포넌트
		request.setAttribute("flag", request.getParameter("flag"));
		result = "/WEB-INF/ajax/manager/ManagerCompleteAccForm.jsp";
		return result;
	}
	
	
	
	// 펫시팅 사고처리완료조회 
	@RequestMapping("/sittingacclist.action")
	public String sittingacclist(HttpServletRequest request,Model model)
	{
		String result = "";
		ArrayList<ManagerDTO> sittingAccList = managerService.sittingAccList();
		model.addAttribute("sittingAccList", sittingAccList);
		result = "/WEB-INF/ajax/manager/SittingAccList.jsp";
		return result;
	}
	
	// 대리산책 사고처리완료조회 
	@RequestMapping("/walkacclist.action")
	public String walkacclist(HttpServletRequest request,Model model)
	{
		String result = "";
		ArrayList<ManagerDTO> walkAccList = managerService.walkAccList();
		model.addAttribute("walkAccList", walkAccList);
		
		result = "/WEB-INF/ajax/manager/WalkAccList.jsp";
		return result;
	}
	
	
	// 펫시팅 비상내역조회 
	@RequestMapping("/emerglist.action")
	public String sittingEmergList(HttpServletRequest request,Model model)
	{
		String result = "";
		int sittingCount =0;
		int walkCount = 0;
		sittingCount = managerService.sittingSearchEmerg();
		walkCount = managerService.walkSearchEmerg();
		request.setAttribute("count", sittingCount + walkCount);
		
		ArrayList<ManagerDTO> sittingEmergList = managerService.sittingEmergList();
		model.addAttribute("sittingEmergList", sittingEmergList);
		
		ArrayList<ManagerDTO> sittingEmergComplete = managerService.sittingEmergComplete();
		model.addAttribute("sittingEmergComplete", sittingEmergComplete);
		
		ArrayList<ManagerDTO> walkEmergList = managerService.walkEmergList();
		model.addAttribute("walkEmergList", walkEmergList);
		
		
		ArrayList<ManagerDTO> walkEmergComplete = managerService.walkEmergComplete();
		model.addAttribute("walkEmergComplete", walkEmergComplete);
		
		result = "/WEB-INF/ajax/manager/ManagerEmerg.jsp";
		return result;
	}
	

	
	
	
	// 펫시팅 비상내역 처리
	@RequestMapping("/deletesittingemerg.action")
	public String deleteSittingEmerg(ManagerDTO dto)
	{
		String result = "";
		// AJAX이자 컴포넌트
		int i = managerService.deleteSittingEmerg(dto);
		result= "mainpage.action";		// 모르겠음 사실 이건
		return result;
	}
	// 대리산책 비상내역 처리
	@RequestMapping("/deletewalkemerg.action")
	public String deleteWalkEmerg(ManagerDTO dto)
	{
		String result = "";
		// AJAX이자 컴포넌트
		int i = managerService.deleteWalkEmerg(dto);
		result= "mainpage.action";		// 모르겠음 사실 이건
		return result;
	}
	
	
	// 통계를 위한 회원 분포 수
	@RequestMapping("/membercount.action")
	public String memberCount(HttpServletRequest request)
	{
		String result = "";
		ManagerDTO memberCount = managerService.memberCount();
		
		request.setAttribute("result", memberCount);
		result= "managerchartform.action";
		return result;
		
	}
		

}
