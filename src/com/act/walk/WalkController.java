package com.act.walk;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.act.walk.WalkDTO;

@Controller
public class WalkController {

	@Autowired
	private WalkService walkService;

	// 대리산책 공고글 리스트업 페이지로 가기
	@RequestMapping("/walklistpage.action")
	public String walkList(Model model, WalkDTO s) 
	{

		String view = "";

		model.addAttribute("list", walkService.list());
		model.addAttribute("IndexTagList", walkService.IndexTagList());

		view = "/WEB-INF/views/walk/WalkListPage.jsp";
		return view;
	}

	// 대리산책러 예약화면
	@RequestMapping("/walkreservationpage.action")
	public String getReservationView() {
		String result = "";

		result = "/WEB-INF/views/walk/WalkReservationPage.jsp";

		return result;
	}

	// 대리산책러 결제화면
	@RequestMapping("/reservationpaymentpage.action")
	public String getReservationPaymentView() {
		String result = "";

		result = "/WEB-INF/views/index/ReservationPaymentPage.jsp";

		return result;
	}

	// 마이페이지 대리산책. AJAX로 처리.
	@RequestMapping("/mypagewalkform.action")
	public String myPageWalk() {
		String result = "";
		// AJAX이자 컴포넌트
		result = "/WEB-INF/ajax/MyPageWalkForm.jsp";
		return result;
	}
	
	// 대리산책러 자격 시험 시작
	@RequestMapping("/walktest.action")
	public String walkTest() {
		String result = "";

		result = "/WEB-INF/views/walk/WalkTestStartPage.jsp";

		return result;
	}

}
