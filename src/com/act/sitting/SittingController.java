package com.act.sitting;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SittingController
{
	@Autowired
	private SittingService sittingService;

	// 펫시팅(돌봄장소) 리스트업 페이지로 가기
	@RequestMapping("/sittinglistpage.action")
	public String sittingList(Model model, SittingDTO s)
	{
		String view = "";

		model.addAttribute("list", sittingService.list());
		model.addAttribute("IndexTagList", sittingService.IndexTagList());
		model.addAttribute("gradeList", sittingService.gradeList());
		// model.addAttribute("tagList", sittingService.tagList(s));

		// System.out.println("list: " + sittingService.list());
		// System.out.println("tagList: " + sittingService.tagList());
		// System.out.println("gradeList: " + sittingService.gradeList());

		view = "/WEB-INF/views/sitting/SittingListPage.jsp";
		return view;
	}

	// 펫시터 예약화면
	@RequestMapping("/sittingreservationpage.action")
	public String getSittingReservationView()
	{
		String result = "";

		result = "/WEB-INF/views/sitting/SittingReservationPage.jsp";

		return result;
	}
	
	// 마이페이지 펫시팅. AJAX로 처리.
	@RequestMapping("/mypagesittingform.action")
	public String myPageSitting()
	{
		String result = "";
		// AJAX
		result = "/WEB-INF/ajax/MyPageSittingForm.jsp";
		return result;
	}
	
	// 마이페이지 펫시팅의 돌봄장소 수정하기를 눌렀을 때, AJAX처리
	@RequestMapping("/updatespinfoform.action")
	public String updateSPInfoForm()
	{
		String result = "";
		// AJAX
		result = "/WEB-INF/ajax/UpdateSPInfoForm.jsp";
		return result;
	}

	// 마이페이지 펫시팅의 예약내역을 눌렀을 때, AJAX처리
	@RequestMapping("/sittingbooklist.action")
	public String sittingBookList()
	{
		String result = "";
		// AJAX
		result = "/WEB-INF/ajax/SittingBookList.jsp";
		return result;
	}

	// 마이페이지 펫시팅의 후기내역을 눌렀을 때, AJAX처리
	@RequestMapping("/sittingreviewlist.action")
	public String sittingReviewList()
	{
		String result = "";
		// AJAX
		result = "/WEB-INF/ajax/SittingReviewList.jsp";
		return result;
	}
	
	// 마이페이지 펫시팅의 수익을 눌렀을 때, AJAX처리
	@RequestMapping("/sittingmoney.action")
	public String sittingMoney()
	{
		String result = "";
		// AJAX
		result = "/WEB-INF/ajax/SittingMoney.jsp";
		return result;
	}
	
	
	

}
