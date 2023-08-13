package com.act.manager;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
		
		result = "/WEB-INF/ajax/manager/ManagerCompleteAccForm.jsp";
		return result;
	}

}
