package com.act.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController
{
	@Autowired
	private MemberService MemberService;

	// 액션 처리 ---------------------------------------------------------------------------------
	 @RequestMapping("/login.action") public String loginPage() { String
	  result="";
	  
	  result = "/WEB-INF/views/LoginPage.jsp";
	  
	  return result;
	  
	  }
	  
	  @RequestMapping("/main.action") public String main() { String result="";
	  
	  result="/WEB-INF/views/MainPage.jsp";
	  
	  return result; }
	  
	  @RequestMapping("/walktest.action") public String walktest() { String
	  result="";
	  
	  result="/WEB-INF/views/WalkTestPage.jsp";
	  
	  return result; }
	  
	  @RequestMapping("/result.action") public String result() { String result =
	  "";
	  
	  result = "/WEB-INF/views/ResultPage.jsp";
	  
	  return result; }
	  
	  @RequestMapping("/mypage.action") public String mypage() { String result =
	  ""; result = "/WEB-INF/views/MyPage.jsp"; return result; }
	  
	  @RequestMapping("/mpspinsert.action") public String mpspinsert() { String
	  result = ""; result = "/WEB-INF/views/Mypage.jsp"; return result; }
	  
	  @RequestMapping("/recommend.action") public String recommend() { String
	  result = ""; result = "/WEB-INF/views/RecommendPage.jsp"; return result; }
	//액션 처리 ---------------------------------------------------------------------------------
	
	// 로그인 성공/실패
	@RequestMapping("/memberlogin.action")
	public String loginCount(JoinMemberDTO dto, HttpSession session)
	{
		String view = "";

		String result = "";

		result = MemberService.searchMemsid(dto);

		//System.out.println(result);

		if (result.equals("0")) // 로그인 실패
		{
			session.setAttribute("fail", result);
			view = "redirect:LoginForm.jsp";
		}
		else // 로그인 성공
		{
			
			session.setAttribute("memSid", result);
			view = "/WEB-INF/views/MainPage.jsp";
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
	
	
	// 이름, 주빈번호로 아이디 찾기
	@RequestMapping("/idFind.action")
	public String idFind(HttpServletRequest request)
	{ 
		String view = "";
		
		String result = "";
		
		JoinMemberDTO dto = new JoinMemberDTO();
		dto.setJmName(request.getParameter("jmName"));
		dto.setJmSsn(request.getParameter("jmSsn"));
		
		result = MemberService.idFind(dto);
	
		if(result.equals("0"))
		{ 
			result = "아이디가 존재하지 않습니다."; 
		}
		else
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
	public String pwFind(JoinMemberDTO dto, HttpSession session)
	{
		String view="";
		
		String result = "";
		
		result = MemberService.pwFind(dto);
		
		if(result.equals("0") ) // 조회결과 memSid 가 없으면
		{ 
			// result에 0이 담긴채로 PwFindFormPage.jsp 을 요청, 이 때는 alert이 뜸
			session.setAttribute("resultPwFind", result); 
			view ="/WEB-INF/views/PwFindFormPage.jsp";
		}
		else // 조회결과 jmSid 가 있으면
		{ 
			// memSid에 조회한 memSid을 담아  를 넘겨주며 비밀번호 재설정 폼을 요청. 
			session.setAttribute("memSid", result); 
			view =	"/WEB-INF/views/PwRemakeForm.jsp";
		}

		return view;	 
	}
	
	// 비밀번호 재설정하기
	@RequestMapping("/updatePw.action")
	public String updatePw(JoinMemberDTO dto, HttpSession session)
	{
		String view="";
		
		int result = 0;
		
		result = MemberService.updatePw(dto);
		
		if (result>0)
		{
			session.setAttribute("result", result);
			view = "LoginForm.jsp";
		}

		
		return view;
	}
	

}
