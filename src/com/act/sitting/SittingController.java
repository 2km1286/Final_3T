package com.act.sitting;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	// 마이페이지 펫시팅. AJAX로 처리. 들어온 예약 확인하기
	@RequestMapping("/mypagesittingform.action")
	public String myPageSitting(HttpSession session ,Model model)
	{
		String result = "";
		
		String memSid = (String)session.getAttribute("memSid");
		
		model.addAttribute("bookList", sittingService.booklist(memSid));
		
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
	
	// 펫시팅 리스트에서 펫시터 지원하기 눌렀을때
	@RequestMapping("/sittintest.action")
	public String main()
	{
		String result = "";
		result = "/WEB-INF/views/sitting/sittingTestStartPage.jsp";

		return result;
	}
	
	

}
