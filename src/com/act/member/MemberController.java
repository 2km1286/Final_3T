package com.act.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController
{
	@Autowired
	private IMemberService memberService;
	
	// 메인페이지로 가는 액션
	@RequestMapping("/main.action")
	public String main()
	{
		String result = "";
		result = "/WEB-INF/views/MainPage.jsp";
	
		return result;
	}
	
	// 로그인(+ 회원가입버튼) 페이지로 가는 액션
	@RequestMapping("/loginJoin.action")
	public String loginJoinPage()
	{
		String result = "";
	
		result = "/WEB-INF/views/LoginJoin.jsp";
	
		return result;
	
	}
	
	// 회원가입 폼 페이지로 가는 액션
	@RequestMapping("/joinForm.action")
	public String joinForm()
	{
		String result = "";
		result = "/WEB-INF/views/JoinForm.jsp";
		return result;
	}
	
	// 아이디 중복확인
	@RequestMapping("/idDupli.action")
	public String idDupli(HttpServletRequest request)
	{
		String view = "";
	
		String jmId = request.getParameter("jmId");
		int result = memberService.searchId(jmId);
	
		request.setAttribute("result", result);
		view = "/WEB-INF/views/SearchId.jsp";
	
		return view;
	}
	
	// 닉네임 중복확인
	@RequestMapping("/nickDupli.action")
	public String nickDupli(HttpServletRequest request)
	{
		String view = "";
	
		String jmNickName = request.getParameter("jmNickName");
		int result = memberService.searchNick(jmNickName);
	
		request.setAttribute("resultNick", result);
		view = "/WEB-INF/views/SearchNick.jsp";
		return view;
	}
	
	// 설명 써주세
	@RequestMapping("/join.action")
	public String join(HttpSession session, MemberDTO dto)
	{
		String result = "";
		int num = memberService.join(session, dto);
	
		if (num != 1)
			result = "redirect:join.action";
		else
			result = "redirect:main.action";
	
		return result;
	}
	
	// 회원인지 아닌지 조회, 로그인 성공/실패
	@RequestMapping("/memberlogin.action")
	public String loginCount(MemberDTO dto, HttpSession session)
	{
	
		String url = "";
		String result = memberService.searchMemsid(dto);
		if (result.equals("0")) {
	        url = "redirect:loginJoin.action?error=1"; 
	        
		}
		else
		{
	
			session.setAttribute("memSid", result);
			url = "redirect:main.action";
		}
	
		return url;
	}
	
	// 로그아웃하고(session) 다시 메인페이지로 가기
	@RequestMapping("/logOut.action")
	public String logOut(HttpSession session)
	{
		session.removeAttribute("memSid");
		String view = "redirect:main.action";
		return view;
	}
	
	// 아이디찾는 폼으로 가기
	@RequestMapping("/findIdForm.action")
	public String findIdForm()
	{
		String view = "/WEB-INF/views/FindIdForm.jsp";
		return view;
	}
	
	// 이름, 주민번호로 아이디 찾기
	@RequestMapping("/findId.action")
	public String findId(HttpServletRequest request)
	{
		String view = "";
	
		String result = "";
	
		MemberDTO dto = new MemberDTO();
		dto.setJmName(request.getParameter("jmName"));
		dto.setJmSsn(request.getParameter("jmSsn"));
	
		// "0" 또는 특정 jmId 를 반환
		result = memberService.findId(dto);
	
		if (result.equals("0"))
		{
			result = "아이디가 존재하지 않습니다.";
		} else
		{
			String view="";
			
			int result = 0;
			
			// 0 or 성공시 1
			result = memberService.updatePw(dto);		
			
			if (result>0)
			{
				session.removeAttribute("memSid");		// null로 만들어주고
				view = "redirect:main.action";
			}

			
			return view;
		}
		
		
		// 대리산책 리스트업 페이지로 가기
		@RequestMapping("/walkList.action")
		public String petList()
		{
			String view = "";
			view = "/WEB-INF/views/WalkListPage.jsp";
			return view;
		}
	
		// 펫시팅(돌봄장소) 리스트업 페이지로 가기
		@RequestMapping("/sittingList.action")
		public String sittingList()
		{
			String view = "";
			view = "/WEB-INF/views/SittingListPage.jsp";
			return view;
		}
		
		// 메뉴바를 통해 마이페이지로 가기, 디폴트 알림창
		@RequestMapping("/myPage.action")
		public String myPage()
		{
			String result = "";
			result = "/WEB-INF/views/MyPage.jsp";
			return result;
		}
		
		// 마이페이지 펫시팅. AJAX로 처리.
		@RequestMapping("/myPageNotice.action")
		public String myPageNotice(HttpServletRequest request)
		{
			String result = "";
			// AJAX이자 컴포넌트
			result = "/WEB-INF/components/MyPageNoticeForm.jsp";
			return result;
		}
		
		
		// 마이페이지 펫시팅. AJAX로 처리.
		@RequestMapping("/myPageSitting.action")
		public String myPageSitting(HttpServletRequest request)
		{
			String result = "";
			// AJAX이자 컴포넌트
			result = "/WEB-INF/components/MyPageSittingForm.jsp";
			return result;
		}
		
		// 마이페이지 대리산책. AJAX로 처리.
		@RequestMapping("/myPageWalk.action")
		public String myPageWalk(HttpServletRequest request)
		{
			String result = "";
			// AJAX이자 컴포넌트
			result = "/WEB-INF/components/MyPageWalkForm.jsp";
			return result;
		}
		
		// 마이페이지 내 정보 및 반려견 관리. AJAX로 처리.
		@RequestMapping("/myPageInfo.action")
		public String myPageInfo(HttpServletRequest request)
		{
			String result = "";
			// AJAX이자 컴포넌트
			result = "/WEB-INF/components/MyPageInfoForm.jsp";
			return result;
		}
		
		// 마이페이지 나의 활동. AJAX로 처리.
		@RequestMapping("/myPageActive.action")
		public String myPageActive(HttpServletRequest request)
		{
			String result = "";
			// AJAX이자 컴포넌트
			result = "/WEB-INF/components/MyPageActiveForm.jsp";
			return result;
		}
		
		// 마이페이지 나의 활동. AJAX로 처리.
		@RequestMapping("/myPageReport.action")
		public String myPageReport(HttpServletRequest request)
		{
			String result = "";
			// AJAX이자 컴포넌트
			result = "/WEB-INF/components/MyPageReportForm.jsp";
			return result;
		}

	

}
