package com.act.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController
{
	@Autowired
	private MemberServiceI memberService;

	// 액션 처리
	// ---------------------------------------------------------------------------------
	@RequestMapping("/login.action")
	public String loginPage()
	{
		String result = "";

		result = "/WEB-INF/views/LoginPage.jsp";

		return result;

	}

	@RequestMapping("/main.action")
	public String main()
	{
		String result = "";

		result = "/WEB-INF/views/MainPage.jsp";

		return result;
	}

	@RequestMapping("/walktest.action")
	public String walktest()
	{
		String result = "";

		result = "/WEB-INF/views/WalkTestPage.jsp";

		return result;
	}

	@RequestMapping("/result.action")
	public String result()
	{
		String result = "";

		result = "/WEB-INF/views/ResultPage.jsp";

		return result;
	}

	@RequestMapping("/mypage.action")
	public String mypage()
	{
		String result = "";
		result = "/WEB-INF/views/MyPage.jsp";
		return result;
	}

	@RequestMapping("/mpspinsert.action")
	public String mpspinsert()
	{
		String result = "";
		result = "/WEB-INF/views/Mypage.jsp";
		return result;
	}

	@RequestMapping("/recommend.action")
	public String recommend()
	{
		String result = "";
		result = "/WEB-INF/views/RecommendPage.jsp";
		return result;
	}
	// 액션 처리
	// ---------------------------------------------------------------------------------

	// 로그인 성공/실패

	@RequestMapping("/memberlogin.action")
	public String loginCount(MemberDTO dto, HttpSession session)
	{
		String view = "";

		String result = "";

		result = memberService.searchMemsid(dto);

		if (result.equals("0")) // 로그인 실패
		{
			session.setAttribute("fail", result);
			view = "redirect:LoginForm.jsp";
		} else // 로그인 성공
		{

			session.setAttribute("memSid", result);
			view = "/main.action";
		}

		return view;
	}

	// 아이디찾는 폼으로 가기
	@RequestMapping("/idFindFormPage.action")
	public String idFindForm()
	{
		String view = "/WEB-INF/views/IdFindFormPage.jsp";
		return view;
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

	// 이름, 주빈번호로 아이디 찾기
	@RequestMapping("/idFind.action")
	public String idFind(HttpServletRequest request)
	{
		String view = "";

		String result = "";

		MemberDTO dto = new MemberDTO();
		dto.setJmName(request.getParameter("jmName"));
		dto.setJmSsn(request.getParameter("jmSsn"));

		result = memberService.idFind(dto);

		if (result.equals("0"))
		{
			result = "아이디가 존재하지 않습니다.";
		} else
		{
			result = "등록된 아이디는 [" + result + "] 입니다.";
		}

		request.setAttribute("result", result);

		view = "/WEB-INF/views/AjaxIdFind.jsp";

		return view;
	}

	// 비밀번호 재설정을 위해 아이디, 이름, 주민번호를 입력받는 폼
	@RequestMapping("/pwFindFormPage.action")
	public String pwRemakeForm()
	{
		String view = "/WEB-INF/views/PwFindFormPage.jsp";
		return view;
	}

	// 입력받은 아이디, 이름, 주민번호에 해당하는 회원이 있는지 검사
	@RequestMapping("/pwFind.action")
	public String pwFind(MemberDTO dto, HttpSession session)
	{
		String view = "";

		String result = "";

		result = memberService.pwFind(dto);

		if (result.equals("0")) // 조회결과 memSid 가 없으면
		{
			// result에 0이 담긴채로 PwFindFormPage.jsp 을 요청, 이 때는 alert이 뜸
			session.setAttribute("resultPwFind", result);
			view = "/WEB-INF/views/PwFindFormPage.jsp";
		} else // 조회결과 jmSid 가 있으면
		{
			// memSid에 조회한 memSid을 담아 를 넘겨주며 비밀번호 재설정 폼을 요청.
			session.setAttribute("memSid", result);
			view = "/WEB-INF/views/PwRemakeForm.jsp";
		}

		return view;
	}

	// 비밀번호 재설정하기
	@RequestMapping("/updatePw.action")
	public String updatePw(MemberDTO dto, HttpSession session)
	{
		String view = "";

		int result = 0;

		result = memberService.updatePw(dto);

		if (result > 0)
		{
			String view = "";
		
			// "0" 또는 특정 memSid 를 반환
			String result = memberService.searchMemsid(dto);
			
			//System.out.println(result);
			
			if (result.equals("0")) // 회원정보 없음, 로그인/회원가입 페이지로가서 로그인 실패를 띄워주기
			{	
				session.setAttribute("memSid", result);
				view = "redirect:loginJoin.action";
			}
			else // memSid 있음, 그럼 웰컴페이지 / 견주팝업+메인페이지 / 대리산책러팝업+메인페이지 / 펫시터팝업+메인페이지 로 나눠짐
			{
				// 메인페이지에서 분기를 나눠주려면 session에 분기할 때 쓰일 값 하나를 더 담아 보내줘야함
				// 매칭기록이 없으면:1, 매칭기록은 있는데 견주활동이 많은지 대리산책러활도잉 많은지 펫시터활동이 많은지에 따라: 2, 3, 4
				// 메인페이지 가서 나눠 아니면 여기서 나눠서 각각 다른 페이지로 보내?
				
				
				session.setAttribute("memSid", result);
				view = "redirect:main.action";
			}
		
			return view;
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
		
		// 이름, 주빈번호로 아이디 찾기
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
		
			if(result.equals("0"))
			{ 
				result = "아이디가 존재하지 않습니다."; 
			}
			else
			{ 
				result = "등록된 아이디는 [" + result + "] 입니다.";
			}
		
			request.setAttribute("result", result);
		
			view = "/WEB-INF/views/AjaxFindId.jsp";
		
			return view;
		}
		

		// 비밀번호 재설정을 위해 아이디, 이름, 주민번호를 입력받는 폼
		@RequestMapping("/findPwForm.action")
		public String pwRemakeForm()
		{ 
			String view = "/WEB-INF/views/FindPwForm.jsp";
			return view;
		}
		
		// 입력받은 아이디, 이름, 주민번호에 해당하는 회원이 있는지 검사
		@RequestMapping("/findPw.action")
		public String findPw(MemberDTO dto, HttpSession session)
		{
			String view="";
			
			String result = "";
			
			// "0" 또는 특정 memSid 를 반환
			result = memberService.findPw(dto);
			
			if(result.equals("0") ) // 회원정보 없음
			{ 
				// result에 0이 담긴채로 FindPwForm.jsp 을 요청, 이 때는 alert이 뜸
				session.setAttribute("result", result); 
				view ="redirect:findPwForm.action";
			}
			else // 회원정보 있음
			{ 
				// memSid에 조회한 memSid을 담아 넘겨주며 비밀번호 재설정 폼을 요청. 
				session.setAttribute("memSid", result); 
				view =	"/WEB-INF/views/UpdatePwForm.jsp";
			}

			return view;	 
		}
		
		// 비밀번호 재설정하기
		@RequestMapping("/updatePw.action")
		public String updatePw(MemberDTO dto, HttpSession session)
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
		public String walkList()
		{
			String view = "";
			view = "/WEB-INF/views/WalkListPage.jsp";
			return view;
		}
	
		// 펫시팅(돌봄장소) 리스트업 페이지로 가기
		@RequestMapping("/sittingList")
		public String sittingList()
		{
			String view = "";
			view = "/WEB-INF/views/SittingListPage.jsp";
			return view;
		}
		
		// 마이페이지로 가기
		@RequestMapping("/myPage.action")
		public String mypage()
		{
			String result = "";
			result = "/WEB-INF/views/MyPage.jsp";
			return result;
		}
				
		/*
		 * @RequestMapping("/walktest.action") public String walktest() { String
		 * result="";
		 * 
		 * result="/WEB-INF/views/WalkTestPage.jsp";
		 * 
		 * return result; }
		 * 
		 * @RequestMapping("/result.action") public String result() { String result =
		 * "";
		 * 
		 * result = "/WEB-INF/views/ResultPage.jsp";
		 * 
		 * return result; }
		 * 
		 * 
		 * @RequestMapping("/recommend.action") public String recommend() { String
		 * result = ""; result = "/WEB-INF/views/RecommendPage.jsp"; return result; }
		 */
	

}
